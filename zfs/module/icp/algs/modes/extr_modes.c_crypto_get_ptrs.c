
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {uintptr_t uio_iovcnt; int * uio_iov; } ;
typedef TYPE_1__ uio_t ;
typedef int uint8_t ;
typedef size_t offset_t ;
struct TYPE_6__ {size_t iov_len; scalar_t__ iov_base; } ;
typedef TYPE_2__ iovec_t ;
struct TYPE_7__ {int cd_format; TYPE_1__* cd_uio; TYPE_2__ cd_raw; } ;
typedef TYPE_3__ crypto_data_t ;





void
crypto_get_ptrs(crypto_data_t *out, void **iov_or_mp, offset_t *current_offset,
    uint8_t **out_data_1, size_t *out_data_1_len, uint8_t **out_data_2,
    size_t amt)
{
 offset_t offset;

 switch (out->cd_format) {
 case 129: {
  iovec_t *iov;

  offset = *current_offset;
  iov = &out->cd_raw;
  if ((offset + amt) <= iov->iov_len) {

   *out_data_1 = (uint8_t *)iov->iov_base + offset;
   *out_data_1_len = amt;
   *out_data_2 = ((void*)0);
   *current_offset = offset + amt;
  }
  break;
 }

 case 128: {
  uio_t *uio = out->cd_uio;
  iovec_t *iov;
  offset_t offset;
  uintptr_t vec_idx;
  uint8_t *p;

  offset = *current_offset;
  vec_idx = (uintptr_t)(*iov_or_mp);
  iov = (iovec_t *)&uio->uio_iov[vec_idx];
  p = (uint8_t *)iov->iov_base + offset;
  *out_data_1 = p;

  if (offset + amt <= iov->iov_len) {

   *out_data_1_len = amt;
   *out_data_2 = ((void*)0);
   *current_offset = offset + amt;
  } else {

   *out_data_1_len = iov->iov_len - offset;
   if (vec_idx == uio->uio_iovcnt)
    return;
   vec_idx++;
   iov = (iovec_t *)&uio->uio_iov[vec_idx];
   *out_data_2 = (uint8_t *)iov->iov_base;
   *current_offset = amt - *out_data_1_len;
  }
  *iov_or_mp = (void *)vec_idx;
  break;
 }
 }
}
