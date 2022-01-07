
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {int bPoint; scalar_t__* aNode; TYPE_2__ sPoint; TYPE_1__* aPoint; scalar_t__ nPoint; } ;
struct TYPE_6__ {int id; } ;
typedef int RtreeNode ;
typedef TYPE_3__ RtreeCursor ;


 int RTREE_OF_CURSOR (TYPE_3__*) ;
 int assert (int) ;
 int nodeAcquire (int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static RtreeNode *rtreeNodeOfFirstSearchPoint(RtreeCursor *pCur, int *pRC){
  sqlite3_int64 id;
  int ii = 1 - pCur->bPoint;
  assert( ii==0 || ii==1 );
  assert( pCur->bPoint || pCur->nPoint );
  if( pCur->aNode[ii]==0 ){
    assert( pRC!=0 );
    id = ii ? pCur->aPoint[0].id : pCur->sPoint.id;
    *pRC = nodeAcquire(RTREE_OF_CURSOR(pCur), id, 0, &pCur->aNode[ii]);
  }
  return pCur->aNode[ii];
}
