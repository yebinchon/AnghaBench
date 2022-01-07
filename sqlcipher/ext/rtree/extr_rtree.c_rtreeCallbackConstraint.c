
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {int nCoord; scalar_t__* aCoord; int iLevel; scalar_t__ rScore; scalar_t__ rParentScore; int eWithin; int eParentWithin; int iRowid; } ;
typedef TYPE_2__ sqlite3_rtree_query_info ;
typedef int sqlite3_rtree_geometry ;
typedef scalar_t__ sqlite3_rtree_dbl ;
struct TYPE_10__ {int (* xGeom ) (int *,int,scalar_t__*,int*) ;int (* xQueryFunc ) (TYPE_2__*) ;} ;
struct TYPE_14__ {scalar_t__ op; TYPE_1__ u; TYPE_2__* pInfo; } ;
struct TYPE_13__ {scalar_t__ f; scalar_t__ i; } ;
struct TYPE_12__ {int iLevel; scalar_t__ rScore; int eWithin; } ;
typedef TYPE_3__ RtreeSearchPoint ;
typedef TYPE_4__ RtreeCoord ;
typedef TYPE_5__ RtreeConstraint ;


 int NOT_WITHIN ;
 scalar_t__ RTREE_MATCH ;
 int RTREE_MAX_DIMENSIONS ;
 scalar_t__ RTREE_QUERY ;
 scalar_t__ RTREE_ZERO ;
 int assert (int) ;
 int readCoord (int *,TYPE_4__*) ;
 int readInt64 (int *) ;
 int stub1 (int *,int,scalar_t__*,int*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int rtreeCallbackConstraint(
  RtreeConstraint *pConstraint,
  int eInt,
  u8 *pCellData,
  RtreeSearchPoint *pSearch,
  sqlite3_rtree_dbl *prScore,
  int *peWithin
){
  sqlite3_rtree_query_info *pInfo = pConstraint->pInfo;
  int nCoord = pInfo->nCoord;
  int rc;
  RtreeCoord c;
  sqlite3_rtree_dbl aCoord[RTREE_MAX_DIMENSIONS*2];

  assert( pConstraint->op==RTREE_MATCH || pConstraint->op==RTREE_QUERY );
  assert( nCoord==2 || nCoord==4 || nCoord==6 || nCoord==8 || nCoord==10 );

  if( pConstraint->op==RTREE_QUERY && pSearch->iLevel==1 ){
    pInfo->iRowid = readInt64(pCellData);
  }
  pCellData += 8;

  if( eInt==0 ){
    switch( nCoord ){
      case 10: readCoord(pCellData+36, &c); aCoord[9] = c.f;
                readCoord(pCellData+32, &c); aCoord[8] = c.f;
      case 8: readCoord(pCellData+28, &c); aCoord[7] = c.f;
                readCoord(pCellData+24, &c); aCoord[6] = c.f;
      case 6: readCoord(pCellData+20, &c); aCoord[5] = c.f;
                readCoord(pCellData+16, &c); aCoord[4] = c.f;
      case 4: readCoord(pCellData+12, &c); aCoord[3] = c.f;
                readCoord(pCellData+8, &c); aCoord[2] = c.f;
      default: readCoord(pCellData+4, &c); aCoord[1] = c.f;
                readCoord(pCellData, &c); aCoord[0] = c.f;
    }
  }else

  {
    switch( nCoord ){
      case 10: readCoord(pCellData+36, &c); aCoord[9] = c.i;
                readCoord(pCellData+32, &c); aCoord[8] = c.i;
      case 8: readCoord(pCellData+28, &c); aCoord[7] = c.i;
                readCoord(pCellData+24, &c); aCoord[6] = c.i;
      case 6: readCoord(pCellData+20, &c); aCoord[5] = c.i;
                readCoord(pCellData+16, &c); aCoord[4] = c.i;
      case 4: readCoord(pCellData+12, &c); aCoord[3] = c.i;
                readCoord(pCellData+8, &c); aCoord[2] = c.i;
      default: readCoord(pCellData+4, &c); aCoord[1] = c.i;
                readCoord(pCellData, &c); aCoord[0] = c.i;
    }
  }
  if( pConstraint->op==RTREE_MATCH ){
    int eWithin = 0;
    rc = pConstraint->u.xGeom((sqlite3_rtree_geometry*)pInfo,
                              nCoord, aCoord, &eWithin);
    if( eWithin==0 ) *peWithin = NOT_WITHIN;
    *prScore = RTREE_ZERO;
  }else{
    pInfo->aCoord = aCoord;
    pInfo->iLevel = pSearch->iLevel - 1;
    pInfo->rScore = pInfo->rParentScore = pSearch->rScore;
    pInfo->eWithin = pInfo->eParentWithin = pSearch->eWithin;
    rc = pConstraint->u.xQueryFunc(pInfo);
    if( pInfo->eWithin<*peWithin ) *peWithin = pInfo->eWithin;
    if( pInfo->rScore<*prScore || *prScore<RTREE_ZERO ){
      *prScore = pInfo->rScore;
    }
  }
  return rc;
}
