
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int FILE ;


 int fwrite (scalar_t__*,int,int,int * const) ;

__attribute__((used)) static int WriteLE(FILE* const out, uint32_t val, int num) {
  uint8_t buf[4];
  int i;
  for (i = 0; i < num; ++i) {
    buf[i] = (uint8_t)(val & 0xff);
    val >>= 8;
  }
  return (fwrite(buf, num, 1, out) == 1);
}
