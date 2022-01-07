
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int const GetLE16 (int const* const) ;

__attribute__((used)) static int GetLE24(const uint8_t* const data) {
  return GetLE16(data) | (data[2] << 16);
}
