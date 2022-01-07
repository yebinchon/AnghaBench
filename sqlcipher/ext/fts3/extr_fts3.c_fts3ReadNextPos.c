
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int POSITION_LIST_END ;
 int fts3GetDeltaVarint (char**,int*) ;

__attribute__((used)) static void fts3ReadNextPos(
  char **pp,
  sqlite3_int64 *pi
){
  if( (**pp)&0xFE ){
    fts3GetDeltaVarint(pp, pi);
    *pi -= 2;
  }else{
    *pi = POSITION_LIST_END;
  }
}
