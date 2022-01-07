
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int VP8BitWriter ;


 int B_DC_PRED ;
 int B_HD_PRED ;
 int B_HE_PRED ;
 int B_LD_PRED ;
 int B_RD_PRED ;
 int B_TM_PRED ;
 int B_VE_PRED ;
 int B_VL_PRED ;
 scalar_t__ VP8PutBit (int * const,int,int const) ;

__attribute__((used)) static int PutI4Mode(VP8BitWriter* const bw, int mode,
                     const uint8_t* const prob) {
  if (VP8PutBit(bw, mode != B_DC_PRED, prob[0])) {
    if (VP8PutBit(bw, mode != B_TM_PRED, prob[1])) {
      if (VP8PutBit(bw, mode != B_VE_PRED, prob[2])) {
        if (!VP8PutBit(bw, mode >= B_LD_PRED, prob[3])) {
          if (VP8PutBit(bw, mode != B_HE_PRED, prob[4])) {
            VP8PutBit(bw, mode != B_RD_PRED, prob[5]);
          }
        } else {
          if (VP8PutBit(bw, mode != B_LD_PRED, prob[6])) {
            if (VP8PutBit(bw, mode != B_VL_PRED, prob[7])) {
              VP8PutBit(bw, mode != B_HD_PRED, prob[8]);
            }
          }
        }
      }
    }
  }
  return mode;
}
