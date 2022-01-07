
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISSPACE (char const) ;

__attribute__((used)) static int extractToken(const char *zIn, int nIn, char *zOut, int nOut){
  int i;
  if( nIn<=0 ){
    zOut[0] = 0;
    return 0;
  }
  for(i=0; i<nIn && i<nOut-1 && !ISSPACE(zIn[i]); i++){ zOut[i] = zIn[i]; }
  zOut[i] = 0;
  return i;
}
