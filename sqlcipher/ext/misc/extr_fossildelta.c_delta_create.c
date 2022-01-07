
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int hash ;


 unsigned int NHASH ;
 unsigned int checksum (char const*,unsigned int) ;
 int digit_count (int) ;
 int hash_32bit (int *) ;
 int hash_init (int *,char const*) ;
 int hash_next (int *,char const) ;
 int hash_once (char const*) ;
 int memcpy (char*,char const*,unsigned int) ;
 int memset (int*,int,int) ;
 int putInt (unsigned int,char**) ;
 int sqlite3_free (int*) ;
 int* sqlite3_malloc64 (int) ;

__attribute__((used)) static int delta_create(
  const char *zSrc,
  unsigned int lenSrc,
  const char *zOut,
  unsigned int lenOut,
  char *zDelta
){
  int i, base;
  char *zOrigDelta = zDelta;
  hash h;
  int nHash;
  int *landmark;
  int *collide;
  int lastRead = -1;



  putInt(lenOut, &zDelta);
  *(zDelta++) = '\n';





  if( lenSrc<=NHASH ){
    putInt(lenOut, &zDelta);
    *(zDelta++) = ':';
    memcpy(zDelta, zOut, lenOut);
    zDelta += lenOut;
    putInt(checksum(zOut, lenOut), &zDelta);
    *(zDelta++) = ';';
    return zDelta - zOrigDelta;
  }




  nHash = lenSrc/NHASH;
  collide = sqlite3_malloc64( (sqlite3_int64)nHash*2*sizeof(int) );
  memset(collide, -1, nHash*2*sizeof(int));
  landmark = &collide[nHash];
  for(i=0; i<lenSrc-NHASH; i+=NHASH){
    int hv = hash_once(&zSrc[i]) % nHash;
    collide[i/NHASH] = landmark[hv];
    landmark[hv] = i/NHASH;
  }




  base = 0;
  while( base+NHASH<lenOut ){
    int iSrc, iBlock;
    unsigned int bestCnt, bestOfst=0, bestLitsz=0;
    hash_init(&h, &zOut[base]);
    i = 0;
    bestCnt = 0;
    while( 1 ){
      int hv;
      int limit = 250;

      hv = hash_32bit(&h) % nHash;
      iBlock = landmark[hv];
      while( iBlock>=0 && (limit--)>0 ){
        int cnt, ofst, litsz;
        int j, k, x, y;
        int sz;
        int limitX;



        iSrc = iBlock*NHASH;
        y = base+i;
        limitX = ( lenSrc-iSrc <= lenOut-y ) ? lenSrc : iSrc + lenOut - y;
        for(x=iSrc; x<limitX; x++, y++){
          if( zSrc[x]!=zOut[y] ) break;
        }
        j = x - iSrc - 1;



        for(k=1; k<iSrc && k<=i; k++){
          if( zSrc[iSrc-k]!=zOut[base+i-k] ) break;
        }
        k--;


        ofst = iSrc-k;
        cnt = j+k+1;
        litsz = i-k;


        sz = digit_count(i-k)+digit_count(cnt)+digit_count(ofst)+3;
        if( cnt>=sz && cnt>bestCnt ){


          bestCnt = cnt;
          bestOfst = iSrc-k;
          bestLitsz = litsz;
        }


        iBlock = collide[iBlock];
      }




      if( bestCnt>0 ){
        if( bestLitsz>0 ){

          putInt(bestLitsz,&zDelta);
          *(zDelta++) = ':';
          memcpy(zDelta, &zOut[base], bestLitsz);
          zDelta += bestLitsz;
          base += bestLitsz;
        }
        base += bestCnt;
        putInt(bestCnt, &zDelta);
        *(zDelta++) = '@';
        putInt(bestOfst, &zDelta);
        *(zDelta++) = ',';
        if( bestOfst + bestCnt -1 > lastRead ){
          lastRead = bestOfst + bestCnt - 1;
        }
        bestCnt = 0;
        break;
      }


      if( base+i+NHASH>=lenOut ){


        putInt(lenOut-base, &zDelta);
        *(zDelta++) = ':';
        memcpy(zDelta, &zOut[base], lenOut-base);
        zDelta += lenOut-base;
        base = lenOut;
        break;
      }


      hash_next(&h, zOut[base+i+NHASH]);
      i++;
    }
  }



  if( base<lenOut ){
    putInt(lenOut-base, &zDelta);
    *(zDelta++) = ':';
    memcpy(zDelta, &zOut[base], lenOut-base);
    zDelta += lenOut-base;
  }

  putInt(checksum(zOut, lenOut), &zDelta);
  *(zDelta++) = ';';
  sqlite3_free(collide);
  return zDelta - zOrigDelta;
}
