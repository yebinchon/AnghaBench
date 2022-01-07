
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ztest_ds_t ;
typedef int zio_cksum_t ;
typedef int zc_byteswap ;
typedef int zc ;
typedef int uint64_t ;
typedef int uint32_t ;
struct abd {int dummy; } ;
typedef scalar_t__ hrtime_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ NANOSEC ;
 int UINT_MAX ;
 int UMEM_NOFAIL ;
 int VERIFY0 (int ) ;
 struct abd* abd_alloc (int,int ) ;
 int abd_copy_from_buf_off (struct abd*,void*,int ,int) ;
 int abd_fletcher_4_byteswap (struct abd*,int,int *,int *) ;
 int abd_fletcher_4_native (struct abd*,int,int *,int *) ;
 int abd_free (struct abd*) ;
 int bcmp (int *,int *,int) ;
 int fletcher_4_byteswap (void*,int,int *,int *) ;
 int fletcher_4_impl_set (char*) ;
 int fletcher_4_native (void*,int,int *,int *) ;
 scalar_t__ gethrtime () ;
 void* umem_alloc (int,int ) ;
 int umem_free (void*,int) ;
 int ztest_random (int ) ;
 int ztest_random_blocksize () ;

void
ztest_fletcher(ztest_ds_t *zd, uint64_t id)
{
 hrtime_t end = gethrtime() + NANOSEC;

 while (gethrtime() <= end) {
  int run_count = 100;
  void *buf;
  struct abd *abd_data, *abd_meta;
  uint32_t size;
  int *ptr;
  int i;
  zio_cksum_t zc_ref;
  zio_cksum_t zc_ref_byteswap;

  size = ztest_random_blocksize();

  buf = umem_alloc(size, UMEM_NOFAIL);
  abd_data = abd_alloc(size, B_FALSE);
  abd_meta = abd_alloc(size, B_TRUE);

  for (i = 0, ptr = buf; i < size / sizeof (*ptr); i++, ptr++)
   *ptr = ztest_random(UINT_MAX);

  abd_copy_from_buf_off(abd_data, buf, 0, size);
  abd_copy_from_buf_off(abd_meta, buf, 0, size);

  VERIFY0(fletcher_4_impl_set("scalar"));
  fletcher_4_native(buf, size, ((void*)0), &zc_ref);
  fletcher_4_byteswap(buf, size, ((void*)0), &zc_ref_byteswap);

  VERIFY0(fletcher_4_impl_set("cycle"));
  while (run_count-- > 0) {
   zio_cksum_t zc;
   zio_cksum_t zc_byteswap;

   fletcher_4_byteswap(buf, size, ((void*)0), &zc_byteswap);
   fletcher_4_native(buf, size, ((void*)0), &zc);

   VERIFY0(bcmp(&zc, &zc_ref, sizeof (zc)));
   VERIFY0(bcmp(&zc_byteswap, &zc_ref_byteswap,
       sizeof (zc_byteswap)));


   abd_fletcher_4_byteswap(abd_data, size, ((void*)0),
       &zc_byteswap);
   abd_fletcher_4_native(abd_data, size, ((void*)0), &zc);

   VERIFY0(bcmp(&zc, &zc_ref, sizeof (zc)));
   VERIFY0(bcmp(&zc_byteswap, &zc_ref_byteswap,
       sizeof (zc_byteswap)));


   abd_fletcher_4_byteswap(abd_meta, size, ((void*)0),
       &zc_byteswap);
   abd_fletcher_4_native(abd_meta, size, ((void*)0), &zc);

   VERIFY0(bcmp(&zc, &zc_ref, sizeof (zc)));
   VERIFY0(bcmp(&zc_byteswap, &zc_ref_byteswap,
       sizeof (zc_byteswap)));

  }

  umem_free(buf, size);
  abd_free(abd_data);
  abd_free(abd_meta);
 }
}
