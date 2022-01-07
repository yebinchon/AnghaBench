
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uint8_t ;
typedef int uint32_t ;


 int SIZEOF_LENGTH ;
 int fill_size (int*,int) ;

__attribute__((used)) static int
encode_integer(uint32_t v, uint8_t * data, int size) {
 if (size < SIZEOF_LENGTH + sizeof(v))
  return -1;
 data[4] = v & 0xff;
 data[5] = (v >> 8) & 0xff;
 data[6] = (v >> 16) & 0xff;
 data[7] = (v >> 24) & 0xff;
 return fill_size(data, sizeof(v));
}
