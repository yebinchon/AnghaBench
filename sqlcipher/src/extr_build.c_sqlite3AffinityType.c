
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int szSorterRef; } ;
struct TYPE_4__ {int szEst; int colFlags; } ;
typedef TYPE_1__ Column ;


 int COLFLAG_SORTERREF ;
 char SQLITE_AFF_BLOB ;
 char SQLITE_AFF_INTEGER ;
 char SQLITE_AFF_NUMERIC ;
 char SQLITE_AFF_REAL ;
 char SQLITE_AFF_TEXT ;
 int assert (int) ;
 int sqlite3GetInt32 (char const*,int*) ;
 TYPE_2__ sqlite3GlobalConfig ;
 scalar_t__ sqlite3Isdigit (char const) ;
 int* sqlite3UpperToLower ;

char sqlite3AffinityType(const char *zIn, Column *pCol){
  u32 h = 0;
  char aff = SQLITE_AFF_NUMERIC;
  const char *zChar = 0;

  assert( zIn!=0 );
  while( zIn[0] ){
    h = (h<<8) + sqlite3UpperToLower[(*zIn)&0xff];
    zIn++;
    if( h==(('c'<<24)+('h'<<16)+('a'<<8)+'r') ){
      aff = SQLITE_AFF_TEXT;
      zChar = zIn;
    }else if( h==(('c'<<24)+('l'<<16)+('o'<<8)+'b') ){
      aff = SQLITE_AFF_TEXT;
    }else if( h==(('t'<<24)+('e'<<16)+('x'<<8)+'t') ){
      aff = SQLITE_AFF_TEXT;
    }else if( h==(('b'<<24)+('l'<<16)+('o'<<8)+'b')
        && (aff==SQLITE_AFF_NUMERIC || aff==SQLITE_AFF_REAL) ){
      aff = SQLITE_AFF_BLOB;
      if( zIn[0]=='(' ) zChar = zIn;

    }else if( h==(('r'<<24)+('e'<<16)+('a'<<8)+'l')
        && aff==SQLITE_AFF_NUMERIC ){
      aff = SQLITE_AFF_REAL;
    }else if( h==(('f'<<24)+('l'<<16)+('o'<<8)+'a')
        && aff==SQLITE_AFF_NUMERIC ){
      aff = SQLITE_AFF_REAL;
    }else if( h==(('d'<<24)+('o'<<16)+('u'<<8)+'b')
        && aff==SQLITE_AFF_NUMERIC ){
      aff = SQLITE_AFF_REAL;

    }else if( (h&0x00FFFFFF)==(('i'<<16)+('n'<<8)+'t') ){
      aff = SQLITE_AFF_INTEGER;
      break;
    }
  }



  if( pCol ){
    int v = 0;
    if( aff<SQLITE_AFF_NUMERIC ){
      if( zChar ){
        while( zChar[0] ){
          if( sqlite3Isdigit(zChar[0]) ){

            sqlite3GetInt32(zChar, &v);
            break;
          }
          zChar++;
        }
      }else{
        v = 16;
      }
    }





    v = v/4 + 1;
    if( v>255 ) v = 255;
    pCol->szEst = v;
  }
  return aff;
}
