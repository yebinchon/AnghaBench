
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_OPEN_URI ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *rbuMainToWal(const char *zName, int flags){
  int n = (int)strlen(zName);
  const char *z = &zName[n];
  if( flags & SQLITE_OPEN_URI ){
    int odd = 0;
    while( 1 ){
      if( z[0]==0 ){
        odd = 1 - odd;
        if( odd && z[1]==0 ) break;
      }
      z++;
    }
    z += 2;
  }else{
    while( *z==0 ) z++;
  }
  z += (n + 8 + 1);
  return z;
}
