
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstat_delete (int *) ;
 int * mirror_ksp ;

void
vdev_mirror_stat_fini(void)
{
 if (mirror_ksp != ((void*)0)) {
  kstat_delete(mirror_ksp);
  mirror_ksp = ((void*)0);
 }
}
