
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite_int64 ;
typedef int DocListReader ;
typedef int DocList ;


 int mergePosList (int *,int *,scalar_t__,int *) ;
 scalar_t__ nextDocid (int *) ;
 int readerInit (int *,int *) ;

__attribute__((used)) static void docListPhraseMerge(
  DocList *pLeft,
  DocList *pRight,
  DocList *pOut
){
  DocListReader left, right;
  sqlite_int64 docidLeft, docidRight;

  readerInit(&left, pLeft);
  readerInit(&right, pRight);
  docidLeft = nextDocid(&left);
  docidRight = nextDocid(&right);

  while( docidLeft>0 && docidRight>0 ){
    if( docidLeft<docidRight ){
      docidLeft = nextDocid(&left);
    }else if( docidRight<docidLeft ){
      docidRight = nextDocid(&right);
    }else{
      mergePosList(&left, &right, docidLeft, pOut);
      docidLeft = nextDocid(&left);
      docidRight = nextDocid(&right);
    }
  }
}
