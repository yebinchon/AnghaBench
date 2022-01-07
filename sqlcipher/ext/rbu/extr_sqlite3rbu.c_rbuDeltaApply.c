
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,unsigned int) ;
 unsigned int rbuDeltaChecksum (char*,unsigned int) ;
 unsigned int rbuDeltaGetInt (char const**,int*) ;

__attribute__((used)) static int rbuDeltaApply(
  const char *zSrc,
  int lenSrc,
  const char *zDelta,
  int lenDelta,
  char *zOut
){
  unsigned int limit;
  unsigned int total = 0;




  limit = rbuDeltaGetInt(&zDelta, &lenDelta);
  if( *zDelta!='\n' ){

    return -1;
  }
  zDelta++; lenDelta--;
  while( *zDelta && lenDelta>0 ){
    unsigned int cnt, ofst;
    cnt = rbuDeltaGetInt(&zDelta, &lenDelta);
    switch( zDelta[0] ){
      case '@': {
        zDelta++; lenDelta--;
        ofst = rbuDeltaGetInt(&zDelta, &lenDelta);
        if( lenDelta>0 && zDelta[0]!=',' ){

          return -1;
        }
        zDelta++; lenDelta--;
        total += cnt;
        if( total>limit ){

          return -1;
        }
        if( (int)(ofst+cnt) > lenSrc ){

          return -1;
        }
        memcpy(zOut, &zSrc[ofst], cnt);
        zOut += cnt;
        break;
      }
      case ':': {
        zDelta++; lenDelta--;
        total += cnt;
        if( total>limit ){

          return -1;
        }
        if( (int)cnt>lenDelta ){

          return -1;
        }
        memcpy(zOut, zDelta, cnt);
        zOut += cnt;
        zDelta += cnt;
        lenDelta -= cnt;
        break;
      }
      case ';': {
        zDelta++; lenDelta--;
        zOut[0] = 0;






        if( total!=limit ){

          return -1;
        }
        return total;
      }
      default: {

        return -1;
      }
    }
  }

  return -1;
}
