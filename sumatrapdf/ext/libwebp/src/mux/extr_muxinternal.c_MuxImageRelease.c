
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next_; int unknown_; int img_; int alpha_; int header_; } ;
typedef TYPE_1__ WebPMuxImage ;


 int ChunkListDelete (int *) ;
 int MuxImageInit (TYPE_1__* const) ;

WebPMuxImage* MuxImageRelease(WebPMuxImage* const wpi) {
  WebPMuxImage* next;
  if (wpi == ((void*)0)) return ((void*)0);


  ChunkListDelete(&wpi->header_);
  ChunkListDelete(&wpi->alpha_);
  ChunkListDelete(&wpi->img_);
  ChunkListDelete(&wpi->unknown_);

  next = wpi->next_;
  MuxImageInit(wpi);
  return next;
}
