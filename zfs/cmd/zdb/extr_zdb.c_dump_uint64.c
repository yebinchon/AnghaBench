
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
struct TYPE_3__ {size_t doi_max_offset; } ;
typedef TYPE_1__ dmu_object_info_t ;


 int KM_SLEEP ;
 size_t MIN (size_t,int) ;
 int VERIFY0 (int ) ;
 int dmu_object_info (int *,size_t,TYPE_1__*) ;
 int dmu_read (int *,size_t,int ,size_t,size_t*,int ) ;
 int* dump_opt ;
 size_t* kmem_alloc (size_t,int ) ;
 int kmem_free (size_t*,size_t) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_uint64(objset_t *os, uint64_t object, void *data, size_t size)
{
 uint64_t *arr;
 uint64_t oursize;
 if (dump_opt['d'] < 6)
  return;

 if (data == ((void*)0)) {
  dmu_object_info_t doi;

  VERIFY0(dmu_object_info(os, object, &doi));
  size = doi.doi_max_offset;





  oursize = MIN(size, 1 << 20);
  arr = kmem_alloc(oursize, KM_SLEEP);

  int err = dmu_read(os, object, 0, oursize, arr, 0);
  if (err != 0) {
   (void) printf("got error %u from dmu_read\n", err);
   kmem_free(arr, oursize);
   return;
  }
 } else {




  oursize = MIN(size, 1 << 20);
  arr = data;
 }

 if (size == 0) {
  (void) printf("\t\t[]\n");
  return;
 }

 (void) printf("\t\t[%0llx", (u_longlong_t)arr[0]);
 for (size_t i = 1; i * sizeof (uint64_t) < oursize; i++) {
  if (i % 4 != 0)
   (void) printf(", %0llx", (u_longlong_t)arr[i]);
  else
   (void) printf(",\n\t\t%0llx", (u_longlong_t)arr[i]);
 }
 if (oursize != size)
  (void) printf(", ... ");
 (void) printf("]\n");

 if (data == ((void*)0))
  kmem_free(arr, oursize);
}
