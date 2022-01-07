
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int VP8CheckSignature(const uint8_t* const data, size_t data_size) {
  return (data_size >= 3 &&
          data[0] == 0x9d && data[1] == 0x01 && data[2] == 0x2a);
}
