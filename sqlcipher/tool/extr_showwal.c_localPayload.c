
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;


 int pagesize ;

__attribute__((used)) static i64 localPayload(i64 nPayload, char cType){
  i64 maxLocal;
  i64 minLocal;
  i64 surplus;
  i64 nLocal;
  if( cType==13 ){

    maxLocal = pagesize-35;
    minLocal = (pagesize-12)*32/255-23;
  }else{
    maxLocal = (pagesize-12)*64/255-23;
    minLocal = (pagesize-12)*32/255-23;
  }
  if( nPayload>maxLocal ){
    surplus = minLocal + (nPayload-minLocal)%(pagesize-4);
    if( surplus<=maxLocal ){
      nLocal = surplus;
    }else{
      nLocal = minLocal;
    }
  }else{
    nLocal = nPayload;
  }
  return nLocal;
}
