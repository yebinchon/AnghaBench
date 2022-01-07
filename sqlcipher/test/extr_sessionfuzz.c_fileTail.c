
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *fileTail(const char *z){
  const char *zOut = z;
  while( z[0] ){
    if( z[0]=='/' && z[1]!=0 ) zOut = &z[1];
    z++;
  }
  return zOut;
}
