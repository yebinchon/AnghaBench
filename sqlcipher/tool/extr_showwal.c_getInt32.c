
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int getInt32(const unsigned char *a){
  unsigned int x = (a[0]<<24) + (a[1]<<16) + (a[2]<<8) + a[3];
  return x;
}
