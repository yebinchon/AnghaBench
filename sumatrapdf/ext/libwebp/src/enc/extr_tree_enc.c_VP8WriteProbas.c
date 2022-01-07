
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__**** coeffs_; scalar_t__ const skip_proba_; int use_skip_proba_; } ;
typedef TYPE_1__ VP8EncProba ;
typedef int VP8BitWriter ;


 int NUM_BANDS ;
 int NUM_CTX ;
 int NUM_PROBAS ;
 int NUM_TYPES ;
 scalar_t__ const**** VP8CoeffsProba0 ;
 int **** VP8CoeffsUpdateProba ;
 scalar_t__ VP8PutBit (int * const,int const,int ) ;
 scalar_t__ VP8PutBitUniform (int * const,int ) ;
 int VP8PutBits (int * const,scalar_t__ const,int) ;

void VP8WriteProbas(VP8BitWriter* const bw, const VP8EncProba* const probas) {
  int t, b, c, p;
  for (t = 0; t < NUM_TYPES; ++t) {
    for (b = 0; b < NUM_BANDS; ++b) {
      for (c = 0; c < NUM_CTX; ++c) {
        for (p = 0; p < NUM_PROBAS; ++p) {
          const uint8_t p0 = probas->coeffs_[t][b][c][p];
          const int update = (p0 != VP8CoeffsProba0[t][b][c][p]);
          if (VP8PutBit(bw, update, VP8CoeffsUpdateProba[t][b][c][p])) {
            VP8PutBits(bw, p0, 8);
          }
        }
      }
    }
  }
  if (VP8PutBitUniform(bw, probas->use_skip_proba_)) {
    VP8PutBits(bw, probas->skip_proba_, 8);
  }
}
