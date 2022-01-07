
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int tclvarAddToIdxstr(char *zStr, char x){
  int i;
  for(i=0; zStr[i]; i++){
    if( zStr[i]==x ) return 1;
  }
  zStr[i] = x;
  zStr[i+1] = '\0';
  return 0;
}
