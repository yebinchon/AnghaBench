
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ iType; } ;
struct TYPE_9__ {scalar_t__ iType; } ;
typedef int PLWriter ;
typedef int PLReader ;
typedef TYPE_1__ DLWriter ;
typedef TYPE_2__ DLReader ;


 int assert (int) ;
 scalar_t__ dlrDocid (TYPE_2__*) ;
 int plrAtEnd (int *) ;
 int plrDestroy (int *) ;
 int plrInit (int *,TYPE_2__*) ;
 int plrStep (int *) ;
 int plwCopy (int *,int *) ;
 int plwDestroy (int *) ;
 int plwInit (int *,TYPE_1__*,scalar_t__) ;
 int plwTerminate (int *) ;
 int posListCmp (int *,int *) ;

__attribute__((used)) static void posListUnion(DLReader *pLeft, DLReader *pRight, DLWriter *pOut){
  PLReader left, right;
  PLWriter writer;

  assert( dlrDocid(pLeft)==dlrDocid(pRight) );
  assert( pLeft->iType==pRight->iType );
  assert( pLeft->iType==pOut->iType );

  plrInit(&left, pLeft);
  plrInit(&right, pRight);
  plwInit(&writer, pOut, dlrDocid(pLeft));

  while( !plrAtEnd(&left) || !plrAtEnd(&right) ){
    int c = posListCmp(&left, &right);
    if( c<0 ){
      plwCopy(&writer, &left);
      plrStep(&left);
    }else if( c>0 ){
      plwCopy(&writer, &right);
      plrStep(&right);
    }else{
      plwCopy(&writer, &left);
      plrStep(&left);
      plrStep(&right);
    }
  }

  plwTerminate(&writer);
  plwDestroy(&writer);
  plrDestroy(&left);
  plrDestroy(&right);
}
