
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int img_; int alpha_; int header_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef int WebPChunkId ;
typedef int WebPChunk ;





 int assert (int ) ;

__attribute__((used)) static WebPChunk** GetChunkListFromId(const WebPMuxImage* const wpi,
                                      WebPChunkId id) {
  assert(wpi != ((void*)0));
  switch (id) {
    case 129: return (WebPChunk**)&wpi->header_;
    case 130: return (WebPChunk**)&wpi->alpha_;
    case 128: return (WebPChunk**)&wpi->img_;
    default: return ((void*)0);
  }
}
