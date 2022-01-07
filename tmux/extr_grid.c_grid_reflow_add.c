
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct grid_line {int dummy; } ;
struct grid {size_t sy; struct grid_line* linedata; } ;


 int memset (struct grid_line*,int ,int) ;
 struct grid_line* xreallocarray (struct grid_line*,int,int) ;

__attribute__((used)) static struct grid_line *
grid_reflow_add(struct grid *gd, u_int n)
{
 struct grid_line *gl;
 u_int sy = gd->sy + n;

 gd->linedata = xreallocarray(gd->linedata, sy, sizeof *gd->linedata);
 gl = &gd->linedata[gd->sy];
 memset(gl, 0, n * (sizeof *gl));
 gd->sy = sy;
 return (gl);
}
