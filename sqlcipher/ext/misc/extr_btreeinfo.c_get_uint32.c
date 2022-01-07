
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_uint32(unsigned char *a){
  return (a[0]<<24)|(a[1]<<16)|(a[2]<<8)|a[3];
}
