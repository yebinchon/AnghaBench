
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf_; } ;
typedef TYPE_1__ VP8LBitWriter ;


 int WebPSafeFree (int ) ;
 int memset (TYPE_1__* const,int ,int) ;

void VP8LBitWriterWipeOut(VP8LBitWriter* const bw) {
  if (bw != ((void*)0)) {
    WebPSafeFree(bw->buf_);
    memset(bw, 0, sizeof(*bw));
  }
}
