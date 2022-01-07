
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int value ;
typedef int uint64_t ;
struct TYPE_14__ {TYPE_5__* cbr_ds; int cbr_arg; int (* cbr_func ) (int ,int ) ;TYPE_1__* cbr_pr; int pr_cbs; } ;
typedef TYPE_2__ dsl_prop_record_t ;
typedef TYPE_2__ dsl_prop_cb_record_t ;
typedef int dsl_pool_t ;
struct TYPE_15__ {int dd_lock; int dd_props; } ;
typedef TYPE_4__ dsl_dir_t ;
struct TYPE_16__ {TYPE_4__* ds_dir; } ;
typedef TYPE_5__ dsl_dataset_t ;
struct TYPE_13__ {int pr_propname; } ;


 int FTAG ;
 int dsl_dataset_rele (TYPE_5__*,int ) ;
 int dsl_dataset_try_add_ref (int *,TYPE_5__*,int ) ;
 scalar_t__ dsl_prop_get_ds (TYPE_5__*,int ,int,int,int *,int *) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
dsl_prop_notify_all_cb(dsl_pool_t *dp, dsl_dataset_t *ds, void *arg)
{
 dsl_dir_t *dd = ds->ds_dir;
 dsl_prop_record_t *pr;
 dsl_prop_cb_record_t *cbr;

 mutex_enter(&dd->dd_lock);
 for (pr = list_head(&dd->dd_props);
     pr; pr = list_next(&dd->dd_props, pr)) {
  for (cbr = list_head(&pr->pr_cbs); cbr;
      cbr = list_next(&pr->pr_cbs, cbr)) {
   uint64_t value;
   if (ds != cbr->cbr_ds &&
       !dsl_dataset_try_add_ref(dp, cbr->cbr_ds, FTAG))
    continue;

   if (dsl_prop_get_ds(cbr->cbr_ds,
       cbr->cbr_pr->pr_propname, sizeof (value), 1,
       &value, ((void*)0)) == 0)
    cbr->cbr_func(cbr->cbr_arg, value);

   if (ds != cbr->cbr_ds)
    dsl_dataset_rele(cbr->cbr_ds, FTAG);
  }
 }
 mutex_exit(&dd->dd_lock);

 return (0);
}
