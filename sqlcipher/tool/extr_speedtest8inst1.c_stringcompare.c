
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int stringcompare(const char *zLeft, const char *zRight){
  int ii;
  for(ii=0; zLeft[ii] && zRight[ii]; ii++){
    if( zLeft[ii]!=zRight[ii] ) return 0;
  }
  return( zLeft[ii]==zRight[ii] );
}
