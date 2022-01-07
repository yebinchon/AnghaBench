
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct grid_line {int dummy; } ;
struct grid {struct grid_line* linedata; } ;



struct grid_line *
grid_get_line(struct grid *gd, u_int line)
{
 return (&gd->linedata[line]);
}
