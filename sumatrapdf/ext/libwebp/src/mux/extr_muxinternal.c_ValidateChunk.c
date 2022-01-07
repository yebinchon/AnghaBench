
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPMux ;
typedef int WebPFeatureFlags ;
struct TYPE_2__ {int id; } ;
typedef size_t CHUNK_INDEX ;


 scalar_t__ IsNotCompatible (int,int) ;
 int NO_FLAG ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ const WEBP_MUX_OK ;
 scalar_t__ WebPMuxNumChunks (int const* const,int ,int*) ;
 TYPE_1__* kChunks ;

__attribute__((used)) static WebPMuxError ValidateChunk(const WebPMux* const mux, CHUNK_INDEX idx,
                                  WebPFeatureFlags feature,
                                  uint32_t vp8x_flags,
                                  int max, int* num) {
  const WebPMuxError err =
      WebPMuxNumChunks(mux, kChunks[idx].id, num);
  if (err != WEBP_MUX_OK) return err;
  if (max > -1 && *num > max) return WEBP_MUX_INVALID_ARGUMENT;
  if (feature != NO_FLAG && IsNotCompatible(vp8x_flags & feature, *num)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }
  return WEBP_MUX_OK;
}
