
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dd_pending_frees; int dd_pending_allocs; int dd_livelist; } ;
typedef TYPE_1__ dsl_dir_t ;


 int bplist_destroy (int *) ;
 int dsl_deadlist_close (int *) ;

void
dsl_dir_livelist_close(dsl_dir_t *dd)
{
 dsl_deadlist_close(&dd->dd_livelist);
 bplist_destroy(&dd->dd_pending_allocs);
 bplist_destroy(&dd->dd_pending_frees);
}
