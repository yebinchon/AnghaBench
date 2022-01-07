
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {uintptr_t uio_iovcnt; TYPE_1__* uio_iov; } ;
typedef TYPE_2__ uio_t ;
typedef int offset_t ;
struct TYPE_7__ {int cd_format; int cd_offset; TYPE_2__* cd_uio; } ;
typedef TYPE_3__ crypto_data_t ;
struct TYPE_5__ {int iov_len; } ;





void
crypto_init_ptrs(crypto_data_t *out, void **iov_or_mp, offset_t *current_offset)
{
 offset_t offset;

 switch (out->cd_format) {
 case 129:
  *current_offset = out->cd_offset;
  break;

 case 128: {
  uio_t *uiop = out->cd_uio;
  uintptr_t vec_idx;

  offset = out->cd_offset;
  for (vec_idx = 0; vec_idx < uiop->uio_iovcnt &&
      offset >= uiop->uio_iov[vec_idx].iov_len;
      offset -= uiop->uio_iov[vec_idx++].iov_len)
   ;

  *current_offset = offset;
  *iov_or_mp = (void *)vec_idx;
  break;
 }
 }
}
