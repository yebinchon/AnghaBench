
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char hexToInt(unsigned int h){



  h += 9*(1&(h>>6));

  return h & 0xf;
}
