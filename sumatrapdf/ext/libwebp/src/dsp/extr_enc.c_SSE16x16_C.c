
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GetSSE (int const*,int const*,int,int) ;

__attribute__((used)) static int SSE16x16_C(const uint8_t* a, const uint8_t* b) {
  return GetSSE(a, b, 16, 16);
}
