
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cFrom; unsigned char cTo0; char cTo1; char cTo2; char cTo3; char cTo4; } ;
typedef TYPE_1__ Transliteration ;


 TYPE_1__* spellfixFindTranslit (int,int*) ;
 unsigned char* sqlite3_malloc64 (int) ;
 int utf8Read (unsigned char const*,int,int*) ;

__attribute__((used)) static unsigned char *transliterate(const unsigned char *zIn, int nIn){



  unsigned char *zOut = sqlite3_malloc64( nIn*4 + 1 );

  int c, sz, nOut;
  if( zOut==0 ) return 0;
  nOut = 0;
  while( nIn>0 ){
    c = utf8Read(zIn, nIn, &sz);
    zIn += sz;
    nIn -= sz;
    if( c<=127 ){
      zOut[nOut++] = (unsigned char)c;
    }else{
      int xTop, xBtm, x;
      const Transliteration *tbl = spellfixFindTranslit(c, &xTop);
      xBtm = 0;
      while( xTop>=xBtm ){
        x = (xTop + xBtm)/2;
        if( tbl[x].cFrom==c ){
          zOut[nOut++] = tbl[x].cTo0;
          if( tbl[x].cTo1 ){
            zOut[nOut++] = tbl[x].cTo1;
            if( tbl[x].cTo2 ){
              zOut[nOut++] = tbl[x].cTo2;
              if( tbl[x].cTo3 ){
                zOut[nOut++] = tbl[x].cTo3;





              }
            }
          }
          c = 0;
          break;
        }else if( tbl[x].cFrom>c ){
          xTop = x-1;
        }else{
          xBtm = x+1;
        }
      }
      if( c ) zOut[nOut++] = '?';
    }
  }
  zOut[nOut] = 0;
  return zOut;
}
