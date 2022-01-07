
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_int64 ;
typedef int DocListReader ;
typedef int DocList ;


 int docListAddDocid (int *,scalar_t__) ;
 scalar_t__ nextDocid (int *) ;
 int readerInit (int *,int *) ;

__attribute__((used)) static void docListOrMerge(
  DocList *pLeft,
  DocList *pRight,
  DocList *pOut
){
  DocListReader left, right;
  sqlite_int64 docidLeft, docidRight, priorLeft;

  readerInit(&left, pLeft);
  readerInit(&right, pRight);
  docidLeft = nextDocid(&left);
  docidRight = nextDocid(&right);

  while( docidLeft>0 && docidRight>0 ){
    if( docidLeft<=docidRight ){
      docListAddDocid(pOut, docidLeft);
    }else{
      docListAddDocid(pOut, docidRight);
    }
    priorLeft = docidLeft;
    if( docidLeft<=docidRight ){
      docidLeft = nextDocid(&left);
    }
    if( docidRight>0 && docidRight<=priorLeft ){
      docidRight = nextDocid(&right);
    }
  }
  while( docidLeft>0 ){
    docListAddDocid(pOut, docidLeft);
    docidLeft = nextDocid(&left);
  }
  while( docidRight>0 ){
    docListAddDocid(pOut, docidRight);
    docidRight = nextDocid(&right);
  }
}
