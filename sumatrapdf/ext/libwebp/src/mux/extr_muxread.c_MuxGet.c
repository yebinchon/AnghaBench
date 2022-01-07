
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WebPMuxError ;
struct TYPE_4__ {int xmp_; int exif_; int anim_; int iccp_; int vp8x_; } ;
typedef TYPE_1__ WebPMux ;
typedef int WebPData ;
struct TYPE_5__ {int id; } ;
typedef size_t CHUNK_INDEX ;


 int IDX_ANIM ;
 int IDX_EXIF ;
 int IDX_ICCP ;
 size_t IDX_UNKNOWN ;
 int IDX_VP8X ;
 int IDX_XMP ;
 int IsWPI (int ) ;
 int SWITCH_ID_LIST (int ,int ) ;
 int WEBP_MUX_NOT_FOUND ;
 int WebPDataInit (int * const) ;
 int assert (int) ;
 TYPE_2__* kChunks ;

__attribute__((used)) static WebPMuxError MuxGet(const WebPMux* const mux, CHUNK_INDEX idx,
                           uint32_t nth, WebPData* const data) {
  assert(mux != ((void*)0));
  assert(!IsWPI(kChunks[idx].id));
  WebPDataInit(data);

  SWITCH_ID_LIST(IDX_VP8X, mux->vp8x_);
  SWITCH_ID_LIST(IDX_ICCP, mux->iccp_);
  SWITCH_ID_LIST(IDX_ANIM, mux->anim_);
  SWITCH_ID_LIST(IDX_EXIF, mux->exif_);
  SWITCH_ID_LIST(IDX_XMP, mux->xmp_);
  assert(idx != IDX_UNKNOWN);
  return WEBP_MUX_NOT_FOUND;
}
