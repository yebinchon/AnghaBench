
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int nvlist_t ;
typedef int dsl_prop_getflags_t ;


 int DSL_PROP_GET_LOCAL ;
 int DSL_PROP_GET_RECEIVED ;
 int FTAG ;
 int dmu_objset_hold (char const*,int ,TYPE_1__**) ;
 int dmu_objset_rele (TYPE_1__*,int ) ;
 int dsl_prop_get_all_ds (int ,int **,int ) ;
 scalar_t__ dsl_prop_get_hasrecvd (char const*) ;

int
dsl_prop_get_received(const char *dsname, nvlist_t **nvp)
{
 objset_t *os;
 int error;






 dsl_prop_getflags_t flags = (dsl_prop_get_hasrecvd(dsname) ?
     DSL_PROP_GET_RECEIVED : DSL_PROP_GET_LOCAL);

 error = dmu_objset_hold(dsname, FTAG, &os);
 if (error != 0)
  return (error);
 error = dsl_prop_get_all_ds(os->os_dsl_dataset, nvp, flags);
 dmu_objset_rele(os, FTAG);
 return (error);
}
