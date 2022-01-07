
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zthr_t ;
typedef int boolean_t ;
struct TYPE_3__ {int (* ks_update ) (TYPE_1__*,int ) ;} ;


 int B_FALSE ;
 int KSTAT_READ ;
 int arc_adjust_needed ;
 int arc_initialized ;
 TYPE_1__* arc_ksp ;
 int arc_tuning_update () ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static boolean_t
arc_adjust_cb_check(void *arg, zthr_t *zthr)
{
 if (!arc_initialized)
  return (B_FALSE);







 arc_tuning_update();
 if (arc_ksp != ((void*)0))
  arc_ksp->ks_update(arc_ksp, KSTAT_READ);
 return (arc_adjust_needed);
}
