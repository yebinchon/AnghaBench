
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8BitWriter ;


 int DC_PRED ;
 int H_PRED ;
 scalar_t__ VP8PutBit (int * const,int,int) ;
 int V_PRED ;

__attribute__((used)) static void PutUVMode(VP8BitWriter* const bw, int uv_mode) {
  if (VP8PutBit(bw, uv_mode != DC_PRED, 142)) {
    if (VP8PutBit(bw, uv_mode != V_PRED, 114)) {
      VP8PutBit(bw, uv_mode != H_PRED, 183);
    }
  }
}
