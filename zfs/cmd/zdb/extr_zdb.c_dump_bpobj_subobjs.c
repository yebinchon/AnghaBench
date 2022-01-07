
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
typedef int int64_t ;
struct TYPE_3__ {int doi_max_offset; } ;
typedef TYPE_1__ dmu_object_info_t ;


 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int dmu_object_info (int *,scalar_t__,TYPE_1__*) ;
 int dmu_read (int *,scalar_t__,int ,int,scalar_t__*,int ) ;
 scalar_t__* kmem_alloc (int,int ) ;
 int kmem_free (scalar_t__*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
dump_bpobj_subobjs(objset_t *os, uint64_t object, void *data, size_t size)
{
 dmu_object_info_t doi;
 int64_t i;

 VERIFY0(dmu_object_info(os, object, &doi));
 uint64_t *subobjs = kmem_alloc(doi.doi_max_offset, KM_SLEEP);

 int err = dmu_read(os, object, 0, doi.doi_max_offset, subobjs, 0);
 if (err != 0) {
  (void) printf("got error %u from dmu_read\n", err);
  kmem_free(subobjs, doi.doi_max_offset);
  return;
 }

 int64_t last_nonzero = -1;
 for (i = 0; i < doi.doi_max_offset / 8; i++) {
  if (subobjs[i] != 0)
   last_nonzero = i;
 }

 for (i = 0; i <= last_nonzero; i++) {
  (void) printf("\t%llu\n", (u_longlong_t)subobjs[i]);
 }
 kmem_free(subobjs, doi.doi_max_offset);
}
