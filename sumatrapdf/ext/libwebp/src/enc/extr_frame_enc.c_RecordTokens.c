
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int error_; } ;
typedef TYPE_2__ VP8TBuffer ;
typedef int VP8Residual ;
struct TYPE_13__ {int * uv_levels; int * y_ac_levels; int y_dc_levels; } ;
typedef TYPE_3__ VP8ModeScore ;
typedef int VP8Encoder ;
struct TYPE_14__ {int* top_nz_; int* left_nz_; TYPE_1__* mb_; int * enc_; } ;
typedef TYPE_4__ VP8EncIterator ;
struct TYPE_11__ {int type_; } ;


 int VP8InitResidual (int,int,int * const,int *) ;
 int VP8IteratorBytesToNz (TYPE_4__* const) ;
 int VP8IteratorNzToBytes (TYPE_4__* const) ;
 void* VP8RecordCoeffTokens (int const,int *,TYPE_2__* const) ;
 int VP8SetResidualCoeffs (int ,int *) ;

__attribute__((used)) static int RecordTokens(VP8EncIterator* const it, const VP8ModeScore* const rd,
                        VP8TBuffer* const tokens) {
  int x, y, ch;
  VP8Residual res;
  VP8Encoder* const enc = it->enc_;

  VP8IteratorNzToBytes(it);
  if (it->mb_->type_ == 1) {
    const int ctx = it->top_nz_[8] + it->left_nz_[8];
    VP8InitResidual(0, 1, enc, &res);
    VP8SetResidualCoeffs(rd->y_dc_levels, &res);
    it->top_nz_[8] = it->left_nz_[8] =
        VP8RecordCoeffTokens(ctx, &res, tokens);
    VP8InitResidual(1, 0, enc, &res);
  } else {
    VP8InitResidual(0, 3, enc, &res);
  }


  for (y = 0; y < 4; ++y) {
    for (x = 0; x < 4; ++x) {
      const int ctx = it->top_nz_[x] + it->left_nz_[y];
      VP8SetResidualCoeffs(rd->y_ac_levels[x + y * 4], &res);
      it->top_nz_[x] = it->left_nz_[y] =
          VP8RecordCoeffTokens(ctx, &res, tokens);
    }
  }


  VP8InitResidual(0, 2, enc, &res);
  for (ch = 0; ch <= 2; ch += 2) {
    for (y = 0; y < 2; ++y) {
      for (x = 0; x < 2; ++x) {
        const int ctx = it->top_nz_[4 + ch + x] + it->left_nz_[4 + ch + y];
        VP8SetResidualCoeffs(rd->uv_levels[ch * 2 + x + y * 2], &res);
        it->top_nz_[4 + ch + x] = it->left_nz_[4 + ch + y] =
            VP8RecordCoeffTokens(ctx, &res, tokens);
      }
    }
  }
  VP8IteratorBytesToNz(it);
  return !tokens->error_;
}
