
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int rValue; } ;
struct TYPE_5__ {int op; int iCoord; TYPE_1__ u; } ;
typedef int RtreeDValue ;
typedef TYPE_2__ RtreeConstraint ;


 int NOT_WITHIN ;
 int RTREE_DECODE_COORD (int,int *,int ) ;
 int RTREE_EQ ;




 int assert (int) ;

__attribute__((used)) static void rtreeLeafConstraint(
  RtreeConstraint *p,
  int eInt,
  u8 *pCellData,
  int *peWithin
){
  RtreeDValue xN;

  assert(p->op==129 || p->op==128 || p->op==131
      || p->op==130 || p->op==RTREE_EQ );
  pCellData += 8 + p->iCoord*4;
  assert( ((((char*)pCellData) - (char*)0)&3)==0 );
  RTREE_DECODE_COORD(eInt, pCellData, xN);
  switch( p->op ){
    case 129: if( xN <= p->u.rValue ) return; break;
    case 128: if( xN < p->u.rValue ) return; break;
    case 131: if( xN >= p->u.rValue ) return; break;
    case 130: if( xN > p->u.rValue ) return; break;
    default: if( xN == p->u.rValue ) return; break;
  }
  *peWithin = NOT_WITHIN;
}
