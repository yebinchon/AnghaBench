
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int dsl_prop_changed_cb_t ;
struct TYPE_12__ {void* cbr_arg; TYPE_1__* cbr_pr; int * cbr_func; TYPE_4__* cbr_ds; } ;
typedef TYPE_2__ dsl_prop_cb_record_t ;
struct TYPE_13__ {int dd_lock; } ;
typedef TYPE_3__ dsl_dir_t ;
struct TYPE_14__ {int ds_prop_cbs; TYPE_3__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
struct TYPE_11__ {int pr_cbs; int pr_propname; } ;


 int ENOMSG ;
 int SET_ERROR (int ) ;
 int kmem_free (TYPE_2__*,int) ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int list_remove (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ strcmp (int ,char const*) ;

int
dsl_prop_unregister(dsl_dataset_t *ds, const char *propname,
    dsl_prop_changed_cb_t *callback, void *cbarg)
{
 dsl_dir_t *dd = ds->ds_dir;
 dsl_prop_cb_record_t *cbr;

 mutex_enter(&dd->dd_lock);
 for (cbr = list_head(&ds->ds_prop_cbs);
     cbr; cbr = list_next(&ds->ds_prop_cbs, cbr)) {
  if (cbr->cbr_ds == ds &&
      cbr->cbr_func == callback &&
      cbr->cbr_arg == cbarg &&
      strcmp(cbr->cbr_pr->pr_propname, propname) == 0)
   break;
 }

 if (cbr == ((void*)0)) {
  mutex_exit(&dd->dd_lock);
  return (SET_ERROR(ENOMSG));
 }

 list_remove(&ds->ds_prop_cbs, cbr);
 list_remove(&cbr->cbr_pr->pr_cbs, cbr);
 mutex_exit(&dd->dd_lock);
 kmem_free(cbr, sizeof (dsl_prop_cb_record_t));

 return (0);
}
