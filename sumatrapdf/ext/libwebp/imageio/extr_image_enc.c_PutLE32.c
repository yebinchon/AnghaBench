
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int PutLE16 (int * const,int) ;

__attribute__((used)) static void PutLE32(uint8_t* const dst, uint32_t value) {
  PutLE16(dst + 0, (value >> 0) & 0xffff);
  PutLE16(dst + 2, (value >> 16) & 0xffff);
}
