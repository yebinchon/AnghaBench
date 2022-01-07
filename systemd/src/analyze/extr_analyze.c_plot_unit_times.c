
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct unit_times {double activating; double activated; double deactivating; double deactivated; int name; int time; } ;


 int FORMAT_TIMESPAN_MAX ;
 double SCALE_X ;
 int USEC_PER_MSEC ;
 int format_timespan (char*,int,int ,int ) ;
 int svg_bar (char*,double,double,int) ;
 int svg_text (int,double,int,char*,int ,...) ;

__attribute__((used)) static int plot_unit_times(struct unit_times *u, double width, int y) {
        char ts[FORMAT_TIMESPAN_MAX];
        bool b;

        if (!u->name)
                return 0;

        svg_bar("activating", u->activating, u->activated, y);
        svg_bar("active", u->activated, u->deactivating, y);
        svg_bar("deactivating", u->deactivating, u->deactivated, y);


        b = u->activating * SCALE_X < width / 2;
        if (u->time)
                svg_text(b, u->activating, y, "%s (%s)",
                         u->name, format_timespan(ts, sizeof(ts), u->time, USEC_PER_MSEC));
        else
                svg_text(b, u->activating, y, "%s", u->name);

        return 1;
}
