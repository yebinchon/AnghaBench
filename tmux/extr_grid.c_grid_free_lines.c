
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {int dummy; } ;


 int grid_free_line (struct grid*,scalar_t__) ;

__attribute__((used)) static void
grid_free_lines(struct grid *gd, u_int py, u_int ny)
{
 u_int yy;

 for (yy = py; yy < py + ny; yy++)
  grid_free_line(gd, yy);
}
