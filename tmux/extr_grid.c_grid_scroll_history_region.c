
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct grid_line {int dummy; } ;
struct grid {size_t hsize; size_t sy; int hscrolled; struct grid_line* linedata; } ;


 int grid_empty_line (struct grid*,size_t,size_t) ;
 int memcpy (struct grid_line*,struct grid_line*,int) ;
 int memmove (struct grid_line*,struct grid_line*,size_t) ;
 struct grid_line* xreallocarray (struct grid_line*,size_t,int) ;

void
grid_scroll_history_region(struct grid *gd, u_int upper, u_int lower, u_int bg)
{
 struct grid_line *gl_history, *gl_upper;
 u_int yy;


 yy = gd->hsize + gd->sy;
 gd->linedata = xreallocarray(gd->linedata, yy + 1,
     sizeof *gd->linedata);


 gl_history = &gd->linedata[gd->hsize];
 memmove(gl_history + 1, gl_history, gd->sy * sizeof *gl_history);


 upper++;
 gl_upper = &gd->linedata[upper];
 lower++;


 memcpy(gl_history, gl_upper, sizeof *gl_history);


 memmove(gl_upper, gl_upper + 1, (lower - upper) * sizeof *gl_upper);
 grid_empty_line(gd, lower, bg);


 gd->hscrolled++;
 gd->hsize++;
}
