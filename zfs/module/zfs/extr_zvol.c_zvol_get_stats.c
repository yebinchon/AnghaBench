
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_5__ {int doi_data_block_size; } ;
typedef TYPE_1__ dmu_object_info_t ;


 int KM_SLEEP ;
 int SET_ERROR (int) ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZFS_PROP_VOLSIZE ;
 int ZVOL_OBJ ;
 int ZVOL_ZAP_OBJ ;
 int dmu_object_info (int *,int ,TYPE_1__*) ;
 int dsl_prop_nvlist_add_uint64 (int *,int ,int ) ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int zap_lookup (int *,int ,char*,int,int,int *) ;

int
zvol_get_stats(objset_t *os, nvlist_t *nv)
{
 int error;
 dmu_object_info_t *doi;
 uint64_t val;

 error = zap_lookup(os, ZVOL_ZAP_OBJ, "size", 8, 1, &val);
 if (error)
  return (SET_ERROR(error));

 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_VOLSIZE, val);
 doi = kmem_alloc(sizeof (dmu_object_info_t), KM_SLEEP);
 error = dmu_object_info(os, ZVOL_OBJ, doi);

 if (error == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_VOLBLOCKSIZE,
      doi->doi_data_block_size);
 }

 kmem_free(doi, sizeof (dmu_object_info_t));

 return (SET_ERROR(error));
}
