
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE4_ERROR ;
 int SQLITE4_OK ;

__attribute__((used)) static int testParseInt(const char *z, int *piVal){
  int i = 0;
  const char *p = z;

  while( *p>='0' && *p<='9' ){
    i = i*10 + (*p - '0');
    p++;
  }
  if( *p=='K' || *p=='k' ){
    i = i * 1024;
    p++;
  }else if( *p=='M' || *p=='m' ){
    i = i * 1024 * 1024;
    p++;
  }

  if( *p ) return SQLITE4_ERROR;
  *piVal = i;
  return SQLITE4_OK;
}
