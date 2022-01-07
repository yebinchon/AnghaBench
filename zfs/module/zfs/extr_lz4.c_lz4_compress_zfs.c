
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int bufsiz ;


 int ASSERT (int) ;
 scalar_t__ BE_32 (scalar_t__) ;
 scalar_t__ real_LZ4_compress (void*,char*,size_t,size_t) ;

size_t
lz4_compress_zfs(void *s_start, void *d_start, size_t s_len,
    size_t d_len, int n)
{
 uint32_t bufsiz;
 char *dest = d_start;

 ASSERT(d_len >= sizeof (bufsiz));

 bufsiz = real_LZ4_compress(s_start, &dest[sizeof (bufsiz)], s_len,
     d_len - sizeof (bufsiz));


 if (bufsiz == 0)
  return (s_len);







 *(uint32_t *)dest = BE_32(bufsiz);

 return (bufsiz + sizeof (bufsiz));
}
