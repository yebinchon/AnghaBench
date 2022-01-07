
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* iq_; int* q_; int* zthresh_; int* sharpen_; int * bias_; } ;
typedef TYPE_1__ VP8Matrix ;


 int BIAS (int const) ;
 int QFIX ;
 int SHARPEN_BITS ;
 int** kBiasMatrices ;
 int* kFreqSharpening ;

__attribute__((used)) static int ExpandMatrix(VP8Matrix* const m, int type) {
  int i, sum;
  for (i = 0; i < 2; ++i) {
    const int is_ac_coeff = (i > 0);
    const int bias = kBiasMatrices[type][is_ac_coeff];
    m->iq_[i] = (1 << QFIX) / m->q_[i];
    m->bias_[i] = BIAS(bias);



    m->zthresh_[i] = ((1 << QFIX) - 1 - m->bias_[i]) / m->iq_[i];
  }
  for (i = 2; i < 16; ++i) {
    m->q_[i] = m->q_[1];
    m->iq_[i] = m->iq_[1];
    m->bias_[i] = m->bias_[1];
    m->zthresh_[i] = m->zthresh_[1];
  }
  for (sum = 0, i = 0; i < 16; ++i) {
    if (type == 0) {
      m->sharpen_[i] = (kFreqSharpening[i] * m->q_[i]) >> SHARPEN_BITS;
    } else {
      m->sharpen_[i] = 0;
    }
    sum += m->q_[i];
  }
  return (sum + 8) >> 4;
}
