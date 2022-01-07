
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct grid {int sx; int * linedata; } ;


 int COLOUR_DEFAULT (size_t) ;
 int grid_expand_line (struct grid*,size_t,int ,size_t) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
grid_empty_line(struct grid *gd, u_int py, u_int bg)
{
 memset(&gd->linedata[py], 0, sizeof gd->linedata[py]);
 if (!COLOUR_DEFAULT(bg))
  grid_expand_line(gd, py, gd->sx, bg);
}
