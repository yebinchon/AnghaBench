
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argb_; } ;
typedef TYPE_1__ VP8LEncoder ;
typedef int VP8LBitWriter ;


 int SUBTRACT_GREEN ;
 int TRANSFORM_PRESENT ;
 int VP8LPutBits (int * const,int ,int) ;
 int VP8LSubtractGreenFromBlueAndRed (int ,int) ;

__attribute__((used)) static void ApplySubtractGreen(VP8LEncoder* const enc, int width, int height,
                               VP8LBitWriter* const bw) {
  VP8LPutBits(bw, TRANSFORM_PRESENT, 1);
  VP8LPutBits(bw, SUBTRACT_GREEN, 2);
  VP8LSubtractGreenFromBlueAndRed(enc->argb_, width * height);
}
