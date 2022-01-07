
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;


 size_t NUM_CHANNELS ;
 int assert (int) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static int CopyCanvas(const uint8_t* src, uint8_t* dst,
                      uint32_t width, uint32_t height) {
  const uint64_t size = (uint64_t)width * height * NUM_CHANNELS;
  if (size != (size_t)size) return 0;
  assert(src != ((void*)0) && dst != ((void*)0));
  memcpy(dst, src, (size_t)size);
  return 1;
}
