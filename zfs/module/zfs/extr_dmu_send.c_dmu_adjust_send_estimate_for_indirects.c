
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
typedef int dsl_dataset_t ;
typedef int dmu_replay_record_t ;
typedef scalar_t__ boolean_t ;
typedef int blkptr_t ;
struct TYPE_4__ {scalar_t__ os_type; } ;


 scalar_t__ DMU_OST_ZVOL ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_RECORDSIZE ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int dmu_objset_from_ds (int *,TYPE_2__**) ;
 int dsl_prop_get_int_ds (int *,int ,int*) ;
 scalar_t__ zfs_override_estimate_recordsize ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
dmu_adjust_send_estimate_for_indirects(dsl_dataset_t *ds, uint64_t uncompressed,
    uint64_t compressed, boolean_t stream_compressed, uint64_t *sizep)
{
 int err = 0;
 uint64_t size;






 uint64_t recordsize;
 uint64_t record_count;
 objset_t *os;
 VERIFY0(dmu_objset_from_ds(ds, &os));


 if (zfs_override_estimate_recordsize != 0) {
  recordsize = zfs_override_estimate_recordsize;
 } else if (os->os_phys->os_type == DMU_OST_ZVOL) {
  err = dsl_prop_get_int_ds(ds,
      zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE), &recordsize);
 } else {
  err = dsl_prop_get_int_ds(ds,
      zfs_prop_to_name(ZFS_PROP_RECORDSIZE), &recordsize);
 }
 if (err != 0)
  return (err);
 record_count = uncompressed / recordsize;






 size = stream_compressed ? compressed : uncompressed;
 size -= record_count * sizeof (blkptr_t);


 size += record_count * sizeof (dmu_replay_record_t);

 *sizep = size;

 return (0);
}
