
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zlen_t ;


 int ASSERT (int) ;
 int CPA_STATUS_INCOMPRESSIBLE ;
 int CPA_STATUS_SUCCESS ;
 int QAT_COMPRESS ;
 scalar_t__ Z_OK ;
 int bcopy (void*,void*,size_t) ;
 scalar_t__ compress_func (void*,size_t*,void*,size_t,int) ;
 int qat_compress (int ,void*,size_t,void*,size_t,size_t*) ;
 scalar_t__ qat_dc_use_accel (size_t) ;

size_t
gzip_compress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 int ret;
 zlen_t dstlen = d_len;

 ASSERT(d_len <= s_len);


 if (qat_dc_use_accel(s_len)) {
  ret = qat_compress(QAT_COMPRESS, s_start, s_len, d_start,
      d_len, &dstlen);
  if (ret == CPA_STATUS_SUCCESS) {
   return ((size_t)dstlen);
  } else if (ret == CPA_STATUS_INCOMPRESSIBLE) {
   if (d_len != s_len)
    return (s_len);

   bcopy(s_start, d_start, s_len);
   return (s_len);
  }

 }

 if (compress_func(d_start, &dstlen, s_start, s_len, n) != Z_OK) {
  if (d_len != s_len)
   return (s_len);

  bcopy(s_start, d_start, s_len);
  return (s_len);
 }

 return ((size_t)dstlen);
}
