
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int isFloat(const char *z){
  char c;
  while( ((c=z[0])>='0' && c<='9') || c=='.' || c=='E' || c=='e'
          || c=='+' || c=='-' ) z++;
  return z[0]==0;
}
