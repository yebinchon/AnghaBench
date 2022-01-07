
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ci_level; int (* ci_decompress ) (int*,void*,size_t,size_t,int ) ;} ;
typedef TYPE_1__ zio_compress_info_t ;
typedef int uchar_t ;


 int DDT_COMPRESS_BYTEORDER_MASK ;
 int DDT_COMPRESS_FUNCTION_MASK ;
 scalar_t__ ZFS_HOST_BYTEORDER ;
 int bcopy (int*,void*,size_t) ;
 int byteswap_uint64_array (void*,size_t) ;
 int stub1 (int*,void*,size_t,size_t,int ) ;
 TYPE_1__* zio_compress_table ;

void
ddt_decompress(uchar_t *src, void *dst, size_t s_len, size_t d_len)
{
 uchar_t version = *src++;
 int cpfunc = version & DDT_COMPRESS_FUNCTION_MASK;
 zio_compress_info_t *ci = &zio_compress_table[cpfunc];

 if (ci->ci_decompress != ((void*)0))
  (void) ci->ci_decompress(src, dst, s_len, d_len, ci->ci_level);
 else
  bcopy(src, dst, d_len);

 if (((version & DDT_COMPRESS_BYTEORDER_MASK) != 0) !=
     (ZFS_HOST_BYTEORDER != 0))
  byteswap_uint64_array(dst, d_len);
}
