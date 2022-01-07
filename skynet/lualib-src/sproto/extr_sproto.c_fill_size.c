
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SIZEOF_LENGTH ;

__attribute__((used)) static inline int
fill_size(uint8_t * data, int sz) {
 data[0] = sz & 0xff;
 data[1] = (sz >> 8) & 0xff;
 data[2] = (sz >> 16) & 0xff;
 data[3] = (sz >> 24) & 0xff;
 return sz + SIZEOF_LENGTH;
}
