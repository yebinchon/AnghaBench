
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int isInteger(const char *z){
  while( z[0]>='0' && z[0]<='9' ) z++;
  return z[0]==0;
}
