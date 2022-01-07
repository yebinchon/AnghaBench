
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_7__ {scalar_t__ iType; } ;
typedef int DocListReader ;
typedef TYPE_1__ DocList ;


 scalar_t__ DL_POSITIONS ;
 int assert (int) ;
 int docListAddDocid (TYPE_1__*,scalar_t__) ;
 scalar_t__ nextDocid (int *) ;
 int readerInit (int *,TYPE_1__*) ;

__attribute__((used)) static void docListAndMerge(
  DocList *pLeft,
  DocList *pRight,
  DocList *pOut
){
  DocListReader left, right;
  sqlite_int64 docidLeft, docidRight;

  assert( pOut->iType<DL_POSITIONS );

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
      docListAddDocid(pOut, docidLeft);
      docidLeft = nextDocid(&left);
      docidRight = nextDocid(&right);
    }
  }
}
