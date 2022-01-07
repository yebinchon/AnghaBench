
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error_; } ;
typedef TYPE_1__ VP8LBitWriter ;


 int VP8LPutBits (TYPE_1__* const,int,int) ;
 int VP8L_VERSION ;
 int VP8L_VERSION_BITS ;

__attribute__((used)) static int WriteRealAlphaAndVersion(VP8LBitWriter* const bw, int has_alpha) {
  VP8LPutBits(bw, has_alpha, 1);
  VP8LPutBits(bw, VP8L_VERSION, VP8L_VERSION_BITS);
  return !bw->error_;
}
