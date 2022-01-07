
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef int abd_t ;


 int ASSERT0 (int) ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 void* abd_borrow_buf_copy (int *,size_t) ;
 int abd_return_buf (int *,void*,size_t) ;
 scalar_t__ spa_get_random (scalar_t__) ;
 int zio_decompress_data_buf (int,void*,void*,size_t,size_t) ;
 scalar_t__ zio_decompress_fail_fraction ;

int
zio_decompress_data(enum zio_compress c, abd_t *src, void *dst,
    size_t s_len, size_t d_len)
{
 void *tmp = abd_borrow_buf_copy(src, s_len);
 int ret = zio_decompress_data_buf(c, tmp, dst, s_len, d_len);
 abd_return_buf(src, tmp, s_len);






 ASSERT0(ret);
 if (zio_decompress_fail_fraction != 0 &&
     spa_get_random(zio_decompress_fail_fraction) == 0)
  ret = SET_ERROR(EINVAL);

 return (ret);
}
