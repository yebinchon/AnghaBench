
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int allZero(unsigned char *aLine){
  int i;
  for(i=0; i<16 && aLine[i]==0; i++){}
  return i==16;
}
