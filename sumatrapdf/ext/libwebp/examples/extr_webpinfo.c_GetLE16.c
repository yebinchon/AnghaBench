
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int GetLE16(const uint8_t* const data) {
  return (data[0] << 0) | (data[1] << 8);
}
