<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Search Prototype</title>
        <meta name="description" content="search">
        <meta name="author" content="Mark Johnson">
        <!-- HTML5 shim, fpor IE6-8 support of HTML elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googleconde.com/svn/trunk/html5.js></script>
        <![endif]-->
        <link href="${resource(dir: 'css', file: 'custom-bootstrap.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'styles.css')}" rel="stylesheet">
        <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="${resource(dir: 'js', file: 'excanvas.js')}"></script><![endif]-->
        <script language="javascript" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
        <script language="javascript" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.jqplot.min.js')}"></script>
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'jquery.jqplot.css')}" />
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jqplot.donutRenderer.min.js')}"></script>
    </head>
    <body>
    <!-- navigation -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <!-- container defines the inner width -->
            <div class="container">
                <ul class="nav">
                    <li><a class="brand" href="index.html"></a></li>
                    <li class="active"><a href="#search">Search</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="span3">
                <ul class="search-params drop-shadow-box striped">
                    <li><h1>Search <span class="cbx-custom">Advanced</span></h1></li>
                    <li>
                    <label for="">Keyword</label>
                    <div class="input-append">
                        <input class="span2" id="appendedInputButton" size="16" type="text"><button class="btn btn-danger" type="button"><i class="icon-remove"></i></button>
                    </div>
                    </li>
                    <li>
                        <label for="">Advanced field 1</label>
                        <input type="text" />
                    </li>
                    <li>
                        <label for="">Advanced field 2</label>
                        <input type="text" />
                    </li>
                    <li>
                        <button class="btn btn-success">Go</button>
                        <span style="float:right"><span>4</span> results</span>
                    </li>
                </ul>
                <ul class="search-stats drop-shadow-box striped">
                    <li><h1>Statistics</h1></li>
                    <li>
                        <p>4 results found in 0.0123ms</p>
                        <div id="chart1"></div>
                    </li>
                </ul>
            </div>
            <div class="span9">
                <div class="row">
                    <div class="span2">
                        <button class="btn btn-large"><i class="icon-th"></i></button>
                        <button class="btn btn-large"><i class="icon-th-list"></i></button>
                        <button class="btn btn-large" type="button"><i class="icon-align-justify"></i></button>
                    </div>
                    <div class="span4">
                    <h3>Showing <em>0 - 10</em> of <em>489</em> Results</h3>
                    </div>
                    <div class="span3">
                        <div class="pagination pagination-right">
                            <ul>
                                <li><a href="#">Prev</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <table class="search-results drop-shadow-box">
                    <tbody class="striped">
                        <tr>
                            <td>
                                <div class="thumbnail-container">
                                    <img class="vertical-shortest" src="${resource(dir: 'img', file: 'devilcat.jpg')}"/>
                                </div>
                            </td>
                            <td>
                                <h1>Title</h1>
                                Some Description
                            </td>                           
                        </tr>
                        <tr>
                            <td>
                                <div class="thumbnail-container">
                                    <img class="vertical-shortest" src="${resource(dir: 'img', file: 'devilcat.jpg')}"/>
                                </div>
                            </td>
                            <td>
                                <h1>Title</h1>
                                Some Description
                            </td>                           
                        </tr>
                        <tr>
                            <td>
                                <div class="thumbnail-container">
                                    <img class="vertical-shortest" src="${resource(dir: 'img', file: 'devilcat.jpg')}"/>
                                </div>
                            </td>
                            <td>
                                <h1>Title</h1>
                                Some Description
                            </td>                           
                        </tr>
                        <tr>
                            <td>
                                <div class="thumbnail-container">
                                    <img class="vertical-shortest" src="${resource(dir: 'img', file: 'devilcat.jpg')}"/>
                                </div>
                            </td>
                            <td>
                                <h1>Title</h1>
                                Some Description
                            </td>                           
                        </tr>
                        <tr>
                            <td>
                                <div class="thumbnail-container">
                                    <img class="vertical-shortest" src="${resource(dir: 'img', file: 'devilcat.jpg')}"/>
                                </div>
                            </td>
                            <td>
                                <h1>Title</h1>
                                Some Description
                            </td>                           
                        </tr>
                    </tbody>
                    <tfoot></tfoot>
                </table>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="container">
            <p>I am a footer</p>
        </div>
    </div>
    <script>
        $(document).ready(function()
        {
          var s1 = [['a',1], ['d',3]];
           
          var plot3 = $.jqplot('chart1', [s1], 
          {
            seriesDefaults: {
              // make this a donut chart.
              renderer:$.jqplot.DonutRenderer,
              rendererOptions:{
                // Donut's can be cut into slices like pies.
                sliceMargin: 3,
                // Pies and donuts can start at any arbitrary angle.
                startAngle: -90,
                showDataLabels: true,
                // By default, data labels show the percentage of the donut/pie.
                // You can show the data 'value' or data 'label' instead.
                dataLabels: 'value',
                shadow: false
              }
            },
            grid:{shadow:false, borderWidth:0, background:'transparent'}
          });
        });
    </script>
    </body>
</html>