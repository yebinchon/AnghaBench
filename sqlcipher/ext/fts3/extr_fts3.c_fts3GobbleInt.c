
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_ERROR ;
 int SQLITE_OK ;

__attribute__((used)) static int fts3GobbleInt(const char **pp, int *pnOut){
  const int MAX_NPREFIX = 10000000;
  const char *p;
  int nInt = 0;

  for(p=*pp; p[0]>='0' && p[0]<='9'; p++){
    nInt = nInt * 10 + (p[0] - '0');
    if( nInt>MAX_NPREFIX ){
      nInt = 0;
      break;
    }
  }
  if( p==*pp ) return SQLITE_ERROR;
  *pnOut = nInt;
  *pp = p;
  return SQLITE_OK;
}
