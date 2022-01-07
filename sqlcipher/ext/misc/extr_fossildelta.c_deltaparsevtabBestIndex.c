
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_7__ {int nConstraint; double estimatedCost; int estimatedRows; int idxNum; TYPE_2__* aConstraintUsage; TYPE_1__* aConstraint; } ;
typedef TYPE_3__ sqlite3_index_info ;
struct TYPE_6__ {int argvIndex; int omit; } ;
struct TYPE_5__ {scalar_t__ iColumn; scalar_t__ usable; scalar_t__ op; } ;


 scalar_t__ DELTAPARSEVTAB_DELTA ;
 int SQLITE_CONSTRAINT ;
 scalar_t__ SQLITE_INDEX_CONSTRAINT_EQ ;
 int SQLITE_OK ;

__attribute__((used)) static int deltaparsevtabBestIndex(
  sqlite3_vtab *tab,
  sqlite3_index_info *pIdxInfo
){
  int i;
  for(i=0; i<pIdxInfo->nConstraint; i++){
    if( pIdxInfo->aConstraint[i].iColumn != DELTAPARSEVTAB_DELTA ) continue;
    if( pIdxInfo->aConstraint[i].usable==0 ) continue;
    if( pIdxInfo->aConstraint[i].op!=SQLITE_INDEX_CONSTRAINT_EQ ) continue;
    pIdxInfo->aConstraintUsage[i].argvIndex = 1;
    pIdxInfo->aConstraintUsage[i].omit = 1;
    pIdxInfo->estimatedCost = (double)1;
    pIdxInfo->estimatedRows = 10;
    pIdxInfo->idxNum = 1;
    return SQLITE_OK;
  }
  pIdxInfo->idxNum = 0;
  pIdxInfo->estimatedCost = (double)0x7fffffff;
  pIdxInfo->estimatedRows = 0x7fffffff;
  return SQLITE_CONSTRAINT;
}
