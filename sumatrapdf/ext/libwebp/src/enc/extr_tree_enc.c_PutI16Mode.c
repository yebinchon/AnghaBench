
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8BitWriter ;


 int H_PRED ;
 int TM_PRED ;
 int VP8PutBit (int * const,int,int) ;
 int V_PRED ;

__attribute__((used)) static void PutI16Mode(VP8BitWriter* const bw, int mode) {
  if (VP8PutBit(bw, (mode == TM_PRED || mode == H_PRED), 156)) {
    VP8PutBit(bw, mode == TM_PRED, 128);
  } else {
    VP8PutBit(bw, mode == V_PRED, 163);
  }
}
