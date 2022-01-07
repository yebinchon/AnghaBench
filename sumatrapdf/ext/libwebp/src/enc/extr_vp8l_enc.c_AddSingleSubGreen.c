
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void AddSingleSubGreen(int p, uint32_t* const r, uint32_t* const b) {
  const int green = p >> 8;
  ++r[((p >> 16) - green) & 0xff];
  ++b[((p >> 0) - green) & 0xff];
}
