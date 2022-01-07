
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid {TYPE_1__* linedata; } ;
struct TYPE_2__ {int * extddata; int * celldata; } ;


 int free (int *) ;

__attribute__((used)) static void
grid_free_line(struct grid *gd, u_int py)
{
 free(gd->linedata[py].celldata);
 gd->linedata[py].celldata = ((void*)0);
 free(gd->linedata[py].extddata);
 gd->linedata[py].extddata = ((void*)0);
}
