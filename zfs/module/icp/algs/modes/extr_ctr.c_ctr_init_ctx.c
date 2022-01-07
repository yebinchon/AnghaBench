
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong_t ;
typedef int uint8_t ;
typedef unsigned long long uint64_t ;
typedef int uchar_t ;
struct TYPE_3__ {int ctr_flags; int * ctr_cb; int * ctr_lastp; void* ctr_upper_mask; void* ctr_lower_mask; } ;
typedef TYPE_1__ ctr_ctx_t ;


 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;
 int CTR_MODE ;
 unsigned long long UINT64_MAX ;
 void* htonll (unsigned long long) ;

int
ctr_init_ctx(ctr_ctx_t *ctr_ctx, ulong_t count, uint8_t *cb,
    void (*copy_block)(uint8_t *, uint8_t *))
{
 uint64_t upper_mask = 0;
 uint64_t lower_mask = 0;

 if (count == 0 || count > 128) {
  return (CRYPTO_MECHANISM_PARAM_INVALID);
 }

 if (count >= 64) {
  count -= 64;
  upper_mask = (count == 64) ? UINT64_MAX : (1ULL << count) - 1;
  lower_mask = UINT64_MAX;
 } else {

  lower_mask = (1ULL << count) - 1;
 }
 ctr_ctx->ctr_lower_mask = htonll(lower_mask);
 ctr_ctx->ctr_upper_mask = htonll(upper_mask);

 copy_block(cb, (uchar_t *)ctr_ctx->ctr_cb);
 ctr_ctx->ctr_lastp = (uint8_t *)&ctr_ctx->ctr_cb[0];
 ctr_ctx->ctr_flags |= CTR_MODE;
 return (CRYPTO_SUCCESS);
}
