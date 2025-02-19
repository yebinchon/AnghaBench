
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WebPMuxError ;
struct TYPE_6__ {int loop_count; int bgcolor; } ;
typedef TYPE_1__ WebPMuxAnimParams ;
typedef int WebPMux ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ bytes; } ;
typedef TYPE_2__ WebPData ;
struct TYPE_8__ {scalar_t__ size; } ;


 int GetLE16 (scalar_t__) ;
 int GetLE32 (scalar_t__) ;
 int IDX_ANIM ;
 scalar_t__ MuxGet (int const*,int ,int,TYPE_2__*) ;
 size_t WEBP_CHUNK_ANIM ;
 scalar_t__ WEBP_MUX_BAD_DATA ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_OK ;
 TYPE_3__* kChunks ;

WebPMuxError WebPMuxGetAnimationParams(const WebPMux* mux,
                                       WebPMuxAnimParams* params) {
  WebPData anim;
  WebPMuxError err;

  if (mux == ((void*)0) || params == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;

  err = MuxGet(mux, IDX_ANIM, 1, &anim);
  if (err != WEBP_MUX_OK) return err;
  if (anim.size < kChunks[WEBP_CHUNK_ANIM].size) return WEBP_MUX_BAD_DATA;
  params->bgcolor = GetLE32(anim.bytes);
  params->loop_count = GetLE16(anim.bytes + 4);

  return WEBP_MUX_OK;
}
