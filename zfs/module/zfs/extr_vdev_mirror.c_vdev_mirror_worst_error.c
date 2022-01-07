
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mm_children; TYPE_2__* mm_child; } ;
typedef TYPE_1__ mirror_map_t ;
struct TYPE_5__ {int mc_speculative; int mc_error; } ;
typedef TYPE_2__ mirror_child_t ;


 int zio_worst_error (int,int ) ;

__attribute__((used)) static int
vdev_mirror_worst_error(mirror_map_t *mm)
{
 int error[2] = { 0, 0 };

 for (int c = 0; c < mm->mm_children; c++) {
  mirror_child_t *mc = &mm->mm_child[c];
  int s = mc->mc_speculative;
  error[s] = zio_worst_error(error[s], mc->mc_error);
 }

 return (error[0] ? error[0] : error[1]);
}
