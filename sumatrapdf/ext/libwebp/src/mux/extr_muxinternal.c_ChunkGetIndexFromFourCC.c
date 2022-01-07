
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int CHUNK_INDEX ;


 int ChunkGetIndexFromTag (int const) ;
 int ChunkGetTagFromFourCC (char const*) ;

CHUNK_INDEX ChunkGetIndexFromFourCC(const char fourcc[4]) {
  const uint32_t tag = ChunkGetTagFromFourCC(fourcc);
  return ChunkGetIndexFromTag(tag);
}
