
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int NUM_CHANNELS ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static int ZeroFillCanvas(uint8_t* buf, uint32_t canvas_width,
                          uint32_t canvas_height) {
  const uint64_t size =
      (uint64_t)canvas_width * canvas_height * NUM_CHANNELS * sizeof(*buf);
  if (size != (size_t)size) return 0;
  memset(buf, 0, (size_t)size);
  return 1;
}
