
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bigToNative(const unsigned char *x){
  return (x[0]<<24) + (x[1]<<16) + (x[2]<<8) + x[3];
}
