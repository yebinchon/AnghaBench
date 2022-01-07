
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kstat_delete (int *) ;
 int * xuio_ksp ;

__attribute__((used)) static void
xuio_stat_fini(void)
{
 if (xuio_ksp != ((void*)0)) {
  kstat_delete(xuio_ksp);
  xuio_ksp = ((void*)0);
 }
}
