
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash ;


 unsigned int NHASH ;
 unsigned int checksum (char const*,unsigned int) ;
 int digit_count (int) ;
 int hash_32bit (int *) ;
 int hash_init (int *,char const*) ;
 int hash_next (int *,char const) ;
 int memcpy (char*,char const*,unsigned int) ;
 int memset (int*,int,int) ;
 int putInt (unsigned int,char**) ;
 int sqlite3_free (int*) ;
 int* sqlite3_malloc (int) ;

__attribute__((used)) static int rbuDeltaCreate(
  const char *zSrc,
  unsigned int lenSrc,
  const char *zOut,
  unsigned int lenOut,
  char *zDelta
){
  unsigned int i, base;
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
    return (int)(zDelta - zOrigDelta);
  }




  nHash = lenSrc/NHASH;
  collide = sqlite3_malloc( nHash*2*sizeof(int) );
  landmark = &collide[nHash];
  memset(landmark, -1, nHash*sizeof(int));
  memset(collide, -1, nHash*sizeof(int));
  for(i=0; i<lenSrc-NHASH; i+=NHASH){
    int hv;
    hash_init(&h, &zSrc[i]);
    hv = hash_32bit(&h) % nHash;
    collide[i/NHASH] = landmark[hv];
    landmark[hv] = i/NHASH;
  }




  base = 0;
  while( base+NHASH<lenOut ){
    int iSrc, iBlock;
    int bestCnt, bestOfst=0, bestLitsz=0;
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



        iSrc = iBlock*NHASH;
        for(
          j=0, x=iSrc, y=base+i;
          (unsigned int)x<lenSrc && (unsigned int)y<lenOut;
          j++, x++, y++
        ){
          if( zSrc[x]!=zOut[y] ) break;
        }
        j--;



        for(k=1; k<iSrc && (unsigned int)k<=i; k++){
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
  return (int)(zDelta - zOrigDelta);
}
