
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zIdxStr ;
typedef char u8 ;
struct sqlite3_index_constraint {scalar_t__ op; int iColumn; scalar_t__ usable; } ;
typedef int sqlite3_vtab ;
struct TYPE_6__ {int nConstraint; int idxNum; double estimatedCost; int estimatedRows; int needToFreeIdxStr; int idxStr; TYPE_1__* aConstraintUsage; int idxFlags; struct sqlite3_index_constraint* aConstraint; } ;
typedef TYPE_2__ sqlite3_index_info ;
typedef int i64 ;
struct TYPE_7__ {int nDim2; int nRowEst; } ;
struct TYPE_5__ {int argvIndex; int omit; } ;
typedef TYPE_3__ Rtree ;


 char RTREE_EQ ;
 char RTREE_GE ;
 char RTREE_GT ;
 char RTREE_LE ;
 char RTREE_LT ;
 char RTREE_MATCH ;
 int RTREE_MAX_DIMENSIONS ;






 int SQLITE_INDEX_SCAN_UNIQUE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (char*,int ,int) ;
 int sqlite3_mprintf (char*,char*) ;

__attribute__((used)) static int rtreeBestIndex(sqlite3_vtab *tab, sqlite3_index_info *pIdxInfo){
  Rtree *pRtree = (Rtree*)tab;
  int rc = SQLITE_OK;
  int ii;
  int bMatch = 0;
  i64 nRow;

  int iIdx = 0;
  char zIdxStr[RTREE_MAX_DIMENSIONS*8+1];
  memset(zIdxStr, 0, sizeof(zIdxStr));





  for(ii=0; ii<pIdxInfo->nConstraint; ii++){
    if( pIdxInfo->aConstraint[ii].op==128 ){
      bMatch = 1;
    }
  }

  assert( pIdxInfo->idxStr==0 );
  for(ii=0; ii<pIdxInfo->nConstraint && iIdx<(int)(sizeof(zIdxStr)-1); ii++){
    struct sqlite3_index_constraint *p = &pIdxInfo->aConstraint[ii];

    if( bMatch==0 && p->usable
     && p->iColumn==0 && p->op==133
    ){

      int jj;
      for(jj=0; jj<ii; jj++){
        pIdxInfo->aConstraintUsage[jj].argvIndex = 0;
        pIdxInfo->aConstraintUsage[jj].omit = 0;
      }
      pIdxInfo->idxNum = 1;
      pIdxInfo->aConstraintUsage[ii].argvIndex = 1;
      pIdxInfo->aConstraintUsage[jj].omit = 1;







      pIdxInfo->estimatedCost = 30.0;
      pIdxInfo->estimatedRows = 1;
      pIdxInfo->idxFlags = SQLITE_INDEX_SCAN_UNIQUE;
      return SQLITE_OK;
    }

    if( p->usable
    && ((p->iColumn>0 && p->iColumn<=pRtree->nDim2)
        || p->op==128)
    ){
      u8 op;
      switch( p->op ){
        case 133: op = RTREE_EQ; break;
        case 131: op = RTREE_GT; break;
        case 130: op = RTREE_LE; break;
        case 129: op = RTREE_LT; break;
        case 132: op = RTREE_GE; break;
        case 128: op = RTREE_MATCH; break;
        default: op = 0; break;
      }
      if( op ){
        zIdxStr[iIdx++] = op;
        zIdxStr[iIdx++] = (char)(p->iColumn - 1 + '0');
        pIdxInfo->aConstraintUsage[ii].argvIndex = (iIdx/2);
        pIdxInfo->aConstraintUsage[ii].omit = 1;
      }
    }
  }

  pIdxInfo->idxNum = 2;
  pIdxInfo->needToFreeIdxStr = 1;
  if( iIdx>0 && 0==(pIdxInfo->idxStr = sqlite3_mprintf("%s", zIdxStr)) ){
    return SQLITE_NOMEM;
  }

  nRow = pRtree->nRowEst >> (iIdx/2);
  pIdxInfo->estimatedCost = (double)6.0 * (double)nRow;
  pIdxInfo->estimatedRows = nRow;

  return rc;
}
