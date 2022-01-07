
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int size; char const* bytes; } ;
typedef TYPE_1__ MetadataPayload ;
typedef int FILE ;


 scalar_t__ WriteLE32 (int * const,int ) ;
 size_t const fwrite (char const*,size_t const,size_t const,int * const) ;
 size_t const kTagSize ;

__attribute__((used)) static int WriteMetadataChunk(FILE* const out, const char fourcc[4],
                              const MetadataPayload* const payload) {
  const uint8_t zero = 0;
  const size_t need_padding = payload->size & 1;
  int ok = (fwrite(fourcc, kTagSize, 1, out) == 1);
  ok = ok && WriteLE32(out, (uint32_t)payload->size);
  ok = ok && (fwrite(payload->bytes, payload->size, 1, out) == 1);
  return ok && (fwrite(&zero, need_padding, need_padding, out) == need_padding);
}
