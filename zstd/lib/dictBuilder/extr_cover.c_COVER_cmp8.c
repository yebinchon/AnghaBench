
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U64 ;
typedef scalar_t__ U32 ;
struct TYPE_3__ {int d; scalar_t__ const samples; } ;
typedef TYPE_1__ COVER_ctx_t ;


 int const MEM_readLE64 (scalar_t__ const) ;

__attribute__((used)) static int COVER_cmp8(COVER_ctx_t *ctx, const void *lp, const void *rp) {
  U64 const mask = (ctx->d == 8) ? (U64)-1 : (((U64)1 << (8 * ctx->d)) - 1);
  U64 const lhs = MEM_readLE64(ctx->samples + *(U32 const *)lp) & mask;
  U64 const rhs = MEM_readLE64(ctx->samples + *(U32 const *)rp) & mask;
  if (lhs < rhs) {
    return -1;
  }
  return (lhs > rhs);
}
