
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ DS_IS_INCONSISTENT (int ) ;
 int FTAG ;
 int dmu_objset_ds (int *) ;
 scalar_t__ dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dsl_dataset_has_resume_receive_state (int ) ;
 int dsl_destroy_head (char const*) ;

int
dsl_destroy_inconsistent(const char *dsname, void *arg)
{
 objset_t *os;

 if (dmu_objset_hold(dsname, FTAG, &os) == 0) {
  boolean_t need_destroy = DS_IS_INCONSISTENT(dmu_objset_ds(os));





  if (dsl_dataset_has_resume_receive_state(dmu_objset_ds(os)))
   need_destroy = B_FALSE;

  dmu_objset_rele(os, FTAG);
  if (need_destroy)
   (void) dsl_destroy_head(dsname);
 }
 return (0);
}
