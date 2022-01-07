
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;



__attribute__((used)) static unsigned int swab32(unsigned int x){
  return (((x)&0x000000FF)<<24) + (((x)&0x0000FF00)<<8)
         + (((x)&0x00FF0000)>>8) + (((x)&0xFF000000)>>24);
}
