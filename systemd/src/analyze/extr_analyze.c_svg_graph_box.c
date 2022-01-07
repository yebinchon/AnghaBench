
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double SCALE_X ;
 double SCALE_Y ;
 int svg (char*,double,double,...) ;

__attribute__((used)) static void svg_graph_box(double height, double begin, double end) {
        long long i;


        svg("<rect class=\"box\" x=\"0\" y=\"0\" width=\"%.03f\" height=\"%.03f\" />\n",
            SCALE_X * (end - begin),
            SCALE_Y * height);

        for (i = ((long long) (begin / 100000)) * 100000; i <= end; i += 100000) {

                if (i % 5000000 == 0)
                        svg("  <line class=\"sec5\" x1=\"%.03f\" y1=\"0\" x2=\"%.03f\" y2=\"%.03f\" />\n"
                            "  <text class=\"sec\" x=\"%.03f\" y=\"%.03f\" >%.01fs</text>\n",
                            SCALE_X * i,
                            SCALE_X * i,
                            SCALE_Y * height,
                            SCALE_X * i,
                            -5.0,
                            0.000001 * i);
                else if (i % 1000000 == 0)
                        svg("  <line class=\"sec1\" x1=\"%.03f\" y1=\"0\" x2=\"%.03f\" y2=\"%.03f\" />\n"
                            "  <text class=\"sec\" x=\"%.03f\" y=\"%.03f\" >%.01fs</text>\n",
                            SCALE_X * i,
                            SCALE_X * i,
                            SCALE_Y * height,
                            SCALE_X * i,
                            -5.0,
                            0.000001 * i);
                else
                        svg("  <line class=\"sec01\" x1=\"%.03f\" y1=\"0\" x2=\"%.03f\" y2=\"%.03f\" />\n",
                            SCALE_X * i,
                            SCALE_X * i,
                            SCALE_Y * height);
        }
}
