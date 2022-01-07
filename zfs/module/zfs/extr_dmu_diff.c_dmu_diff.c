
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct vnode {int dummy; } ;
struct TYPE_3__ {scalar_t__ ddr_last; scalar_t__ ddr_first; int ddr_type; } ;
struct diffarg {int da_err; TYPE_1__ da_ddr; int * da_offp; struct vnode* da_vp; } ;
typedef int offset_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_4__ {int ds_creation_txg; } ;


 int DDR_NONE ;
 int EINVAL ;
 int EXDEV ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int TRAVERSE_NO_DECRYPT ;
 int TRAVERSE_PRE ;
 int TRAVERSE_PREFETCH_METADATA ;
 int diff_cb ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_is_before (int *,int *,int ) ;
 int dsl_dataset_long_hold (int *,int ) ;
 int dsl_dataset_long_rele (int *,int ) ;
 TYPE_2__* dsl_dataset_phys (int *) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 int * strchr (char const*,char) ;
 int traverse_dataset (int *,int ,int,int ,struct diffarg*) ;
 int write_record (struct diffarg*) ;

int
dmu_diff(const char *tosnap_name, const char *fromsnap_name,
    struct vnode *vp, offset_t *offp)
{
 struct diffarg da;
 dsl_dataset_t *fromsnap;
 dsl_dataset_t *tosnap;
 dsl_pool_t *dp;
 int error;
 uint64_t fromtxg;

 if (strchr(tosnap_name, '@') == ((void*)0) ||
     strchr(fromsnap_name, '@') == ((void*)0))
  return (SET_ERROR(EINVAL));

 error = dsl_pool_hold(tosnap_name, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, tosnap_name, FTAG, &tosnap);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 error = dsl_dataset_hold(dp, fromsnap_name, FTAG, &fromsnap);
 if (error != 0) {
  dsl_dataset_rele(tosnap, FTAG);
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 if (!dsl_dataset_is_before(tosnap, fromsnap, 0)) {
  dsl_dataset_rele(fromsnap, FTAG);
  dsl_dataset_rele(tosnap, FTAG);
  dsl_pool_rele(dp, FTAG);
  return (SET_ERROR(EXDEV));
 }

 fromtxg = dsl_dataset_phys(fromsnap)->ds_creation_txg;
 dsl_dataset_rele(fromsnap, FTAG);

 dsl_dataset_long_hold(tosnap, FTAG);
 dsl_pool_rele(dp, FTAG);

 da.da_vp = vp;
 da.da_offp = offp;
 da.da_ddr.ddr_type = DDR_NONE;
 da.da_ddr.ddr_first = da.da_ddr.ddr_last = 0;
 da.da_err = 0;
 error = traverse_dataset(tosnap, fromtxg,
     TRAVERSE_PRE | TRAVERSE_PREFETCH_METADATA | TRAVERSE_NO_DECRYPT,
     diff_cb, &da);

 if (error != 0) {
  da.da_err = error;
 } else {

  (void) write_record(&da);
 }

 dsl_dataset_long_rele(tosnap, FTAG);
 dsl_dataset_rele(tosnap, FTAG);

 return (da.da_err);
}
