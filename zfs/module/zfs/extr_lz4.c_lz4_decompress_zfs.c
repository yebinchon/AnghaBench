
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bufsiz ;


 int BE_IN32 (char const*) ;
 scalar_t__ LZ4_uncompress_unknownOutputSize (char const*,void*,int,size_t) ;

int
lz4_decompress_zfs(void *s_start, void *d_start, size_t s_len,
    size_t d_len, int n)
{
 const char *src = s_start;
 uint32_t bufsiz = BE_IN32(src);


 if (bufsiz + sizeof (bufsiz) > s_len)
  return (1);





 return (LZ4_uncompress_unknownOutputSize(&src[sizeof (bufsiz)],
     d_start, bufsiz, d_len) < 0);
}
