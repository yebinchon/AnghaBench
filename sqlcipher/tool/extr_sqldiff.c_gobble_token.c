
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *gobble_token(const char *zIn, char *zBuf, int nBuf){
  const char *p = zIn;
  char *pOut = zBuf;
  char *pEnd = &pOut[nBuf-1];
  char q = 0;

  if( p==0 ) return 0;
  while( *p==' ' ) p++;
  switch( *p ){
    case '"': q = '"'; break;
    case '\'': q = '\''; break;
    case '`': q = '`'; break;
    case '[': q = ']'; break;
  }

  if( q ){
    p++;
    while( *p && pOut<pEnd ){
      if( *p==q ){
        p++;
        if( *p!=q ) break;
      }
      if( pOut<pEnd ) *pOut++ = *p;
      p++;
    }
  }else{
    while( *p && *p!=' ' && *p!='(' ){
      if( pOut<pEnd ) *pOut++ = *p;
      p++;
    }
  }

  *pOut = '\0';
  return p;
}
