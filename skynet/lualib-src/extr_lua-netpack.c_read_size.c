
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static inline int
read_size(uint8_t * buffer) {
 int r = (int)buffer[0] << 8 | (int)buffer[1];
 return r;
}
