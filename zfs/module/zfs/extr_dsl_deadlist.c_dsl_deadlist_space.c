
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int dl_lock; TYPE_1__* dl_phys; int dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef TYPE_2__ dsl_deadlist_t ;
struct TYPE_5__ {int dl_uncomp; int dl_comp; int dl_used; } ;


 int ASSERT (int ) ;
 int VERIFY0 (int ) ;
 int bpobj_space (int *,int *,int *,int *) ;
 int dsl_deadlist_is_open (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_deadlist_space(dsl_deadlist_t *dl,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
 ASSERT(dsl_deadlist_is_open(dl));
 if (dl->dl_oldfmt) {
  VERIFY0(bpobj_space(&dl->dl_bpobj,
      usedp, compp, uncompp));
  return;
 }

 mutex_enter(&dl->dl_lock);
 *usedp = dl->dl_phys->dl_used;
 *compp = dl->dl_phys->dl_comp;
 *uncompp = dl->dl_phys->dl_uncomp;
 mutex_exit(&dl->dl_lock);
}
