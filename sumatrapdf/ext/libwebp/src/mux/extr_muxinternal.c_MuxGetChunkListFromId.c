
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unknown_; int xmp_; int exif_; int anim_; int iccp_; int vp8x_; } ;
typedef TYPE_1__ WebPMux ;
typedef int WebPChunkId ;
typedef int WebPChunk ;







 int assert (int ) ;

WebPChunk** MuxGetChunkListFromId(const WebPMux* mux, WebPChunkId id) {
  assert(mux != ((void*)0));
  switch (id) {
    case 129: return (WebPChunk**)&mux->vp8x_;
    case 130: return (WebPChunk**)&mux->iccp_;
    case 132: return (WebPChunk**)&mux->anim_;
    case 131: return (WebPChunk**)&mux->exif_;
    case 128: return (WebPChunk**)&mux->xmp_;
    default: return (WebPChunk**)&mux->unknown_;
  }
}
