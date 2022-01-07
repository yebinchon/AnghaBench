
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int checksum (char*,unsigned int) ;
 unsigned int deltaGetInt (char const**,int*) ;
 int memcpy (char*,char const*,unsigned int) ;

__attribute__((used)) static int delta_apply(
  const char *zSrc,
  int lenSrc,
  const char *zDelta,
  int lenDelta,
  char *zOut
){
  unsigned int limit;
  unsigned int total = 0;




  limit = deltaGetInt(&zDelta, &lenDelta);
  if( *zDelta!='\n' ){

    return -1;
  }
  zDelta++; lenDelta--;
  while( *zDelta && lenDelta>0 ){
    unsigned int cnt, ofst;
    cnt = deltaGetInt(&zDelta, &lenDelta);
    switch( zDelta[0] ){
      case '@': {
        zDelta++; lenDelta--;
        ofst = deltaGetInt(&zDelta, &lenDelta);
        if( lenDelta>0 && zDelta[0]!=',' ){

          return -1;
        }
        zDelta++; lenDelta--;
        total += cnt;
        if( total>limit ){

          return -1;
        }
        if( ofst+cnt > lenSrc ){

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
        if( cnt>lenDelta ){

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
