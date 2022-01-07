
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zlen_t ;


 int ASSERT (int) ;
 scalar_t__ CPA_STATUS_SUCCESS ;
 int QAT_DECOMPRESS ;
 scalar_t__ Z_OK ;
 scalar_t__ qat_compress (int ,void*,size_t,void*,size_t,size_t*) ;
 scalar_t__ qat_dc_use_accel (size_t) ;
 scalar_t__ uncompress_func (void*,size_t*,void*,size_t) ;

int
gzip_decompress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 zlen_t dstlen = d_len;

 ASSERT(d_len >= s_len);


 if (qat_dc_use_accel(d_len)) {
  if (qat_compress(QAT_DECOMPRESS, s_start, s_len,
      d_start, d_len, &dstlen) == CPA_STATUS_SUCCESS)
   return (0);

 }

 if (uncompress_func(d_start, &dstlen, s_start, s_len) != Z_OK)
  return (-1);

 return (0);
}
