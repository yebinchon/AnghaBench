
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* ci_decompress ) (void*,void*,size_t,size_t,int ) ;int ci_level; } ;
typedef TYPE_1__ zio_compress_info_t ;
typedef scalar_t__ uint_t ;
typedef enum zio_compress { ____Placeholder_zio_compress } zio_compress ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ;
 int stub1 (void*,void*,size_t,size_t,int ) ;
 TYPE_1__* zio_compress_table ;

int
zio_decompress_data_buf(enum zio_compress c, void *src, void *dst,
    size_t s_len, size_t d_len)
{
 zio_compress_info_t *ci = &zio_compress_table[c];
 if ((uint_t)c >= ZIO_COMPRESS_FUNCTIONS || ci->ci_decompress == ((void*)0))
  return (SET_ERROR(EINVAL));

 return (ci->ci_decompress(src, dst, s_len, d_len, ci->ci_level));
}
