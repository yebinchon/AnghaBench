
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef scalar_t__ sqlite3_int64 ;


 int LARGEST_INT64 ;
 scalar_t__ SMALLEST_INT64 ;
 int assert (int) ;
 int totypeCompare2pow63 (char const*) ;
 scalar_t__ totypeIsspace (char const) ;

__attribute__((used)) static int totypeAtoi64(const char *zNum, sqlite3_int64 *pNum, int length){
  sqlite3_uint64 u = 0;
  int neg = 0;
  int i;
  int c = 0;
  int nonNum = 0;
  const char *zStart;
  const char *zEnd = zNum + length;

  while( zNum<zEnd && totypeIsspace(*zNum) ) zNum++;
  if( zNum<zEnd ){
    if( *zNum=='-' ){
      neg = 1;
      zNum++;
    }else if( *zNum=='+' ){
      zNum++;
    }
  }
  zStart = zNum;
  while( zNum<zEnd && zNum[0]=='0' ){ zNum++; }
  for(i=0; &zNum[i]<zEnd && (c=zNum[i])>='0' && c<='9'; i++){
    u = u*10 + c - '0';
  }
  if( u>LARGEST_INT64 ){
    *pNum = SMALLEST_INT64;
  }else if( neg ){
    *pNum = -(sqlite3_int64)u;
  }else{
    *pNum = (sqlite3_int64)u;
  }
  if( (c!=0 && &zNum[i]<zEnd) || (i==0 && zStart==zNum) || i>19 || nonNum ){


    return 1;
  }else if( i<19 ){

    assert( u<=LARGEST_INT64 );
    return 0;
  }else{

    c = totypeCompare2pow63(zNum);
    if( c<0 ){

      assert( u<=LARGEST_INT64 );
      return 0;
    }else if( c>0 ){

      return 1;
    }else{


      assert( u-1==LARGEST_INT64 );
      assert( (*pNum)==SMALLEST_INT64 );
      return neg ? 0 : 2;
    }
  }
}
