
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct grid {size_t hsize; size_t sy; int * linedata; } ;


 int grid_free_lines (struct grid*,int ,size_t) ;
 int memmove (int *,int *,size_t) ;

__attribute__((used)) static void
grid_trim_history(struct grid *gd, u_int ny)
{
 grid_free_lines(gd, 0, ny);
 memmove(&gd->linedata[0], &gd->linedata[ny],
     (gd->hsize + gd->sy - ny) * (sizeof *gd->linedata));
}
