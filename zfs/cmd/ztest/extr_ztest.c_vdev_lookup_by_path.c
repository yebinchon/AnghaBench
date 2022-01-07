
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_children; struct TYPE_4__** vdev_child; int * vdev_path; } ;
typedef TYPE_1__ vdev_t ;


 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static vdev_t *
vdev_lookup_by_path(vdev_t *vd, const char *path)
{
 vdev_t *mvd;
 int c;

 if (vd->vdev_path != ((void*)0) && strcmp(path, vd->vdev_path) == 0)
  return (vd);

 for (c = 0; c < vd->vdev_children; c++)
  if ((mvd = vdev_lookup_by_path(vd->vdev_child[c], path)) !=
      ((void*)0))
   return (mvd);

 return (((void*)0));
}
