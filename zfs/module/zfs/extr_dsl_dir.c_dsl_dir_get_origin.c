
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int dsl_dataset_t ;
struct TYPE_6__ {int dd_origin_obj; } ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int dsl_dataset_hold_obj (int ,int ,int ,int **) ;
 int dsl_dataset_name (int *,char*) ;
 int dsl_dataset_rele (int *,int ) ;
 TYPE_2__* dsl_dir_phys (TYPE_1__*) ;

void
dsl_dir_get_origin(dsl_dir_t *dd, char *buf)
{
 dsl_dataset_t *ds;
 VERIFY0(dsl_dataset_hold_obj(dd->dd_pool,
     dsl_dir_phys(dd)->dd_origin_obj, FTAG, &ds));

 dsl_dataset_name(ds, buf);

 dsl_dataset_rele(ds, FTAG);
}
