
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int * const,int const* const,int) ;

__attribute__((used)) static void Copy32b(uint8_t* const dst, const uint8_t* const src) {
  memcpy(dst, src, 4);
}
