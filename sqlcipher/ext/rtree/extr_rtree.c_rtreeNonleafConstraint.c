
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_rtree_dbl ;
struct TYPE_4__ {int rValue; } ;
struct TYPE_5__ {int iCoord; int op; TYPE_1__ u; } ;
typedef TYPE_2__ RtreeConstraint ;


 int NOT_WITHIN ;
 int RTREE_DECODE_COORD (int,int *,int ) ;

 int RTREE_GE ;
 int RTREE_GT ;


 int assert (int) ;

__attribute__((used)) static void rtreeNonleafConstraint(
  RtreeConstraint *p,
  int eInt,
  u8 *pCellData,
  int *peWithin
){
  sqlite3_rtree_dbl val;




  pCellData += 8 + 4*(p->iCoord&0xfe);

  assert(p->op==129 || p->op==128 || p->op==RTREE_GE
      || p->op==RTREE_GT || p->op==130 );
  assert( ((((char*)pCellData) - (char*)0)&3)==0 );
  switch( p->op ){
    case 129:
    case 128:
    case 130:
      RTREE_DECODE_COORD(eInt, pCellData, val);

      if( p->u.rValue>=val ) return;
      if( p->op!=130 ) break;


    default:
      pCellData += 4;
      RTREE_DECODE_COORD(eInt, pCellData, val);

      if( p->u.rValue<=val ) return;
  }
  *peWithin = NOT_WITHIN;
}
