
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid {struct grid* linedata; scalar_t__ sy; scalar_t__ hsize; } ;


 int free (struct grid*) ;
 int grid_free_lines (struct grid*,int ,scalar_t__) ;

void
grid_destroy(struct grid *gd)
{
 grid_free_lines(gd, 0, gd->hsize + gd->sy);

 free(gd->linedata);

 free(gd);
}
