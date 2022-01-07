
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int lsmStrlen(const char *zName){
  int nRet = 0;
  while( zName[nRet] ) nRet++;
  return nRet;
}
