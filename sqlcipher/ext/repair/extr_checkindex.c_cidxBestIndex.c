
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sqlite3_index_constraint {scalar_t__ usable; scalar_t__ op; scalar_t__ iColumn; } ;
typedef int sqlite3_vtab ;
struct TYPE_5__ {int nConstraint; double estimatedCost; TYPE_1__* aConstraintUsage; struct sqlite3_index_constraint* aConstraint; } ;
typedef TYPE_2__ sqlite3_index_info ;
struct TYPE_4__ {int argvIndex; int omit; } ;


 scalar_t__ IIC_AFTER_KEY ;
 scalar_t__ IIC_INDEX_NAME ;
 scalar_t__ SQLITE_INDEX_CONSTRAINT_EQ ;
 int SQLITE_OK ;

__attribute__((used)) static int cidxBestIndex(sqlite3_vtab *tab, sqlite3_index_info *pInfo){
  int iIdxName = -1;
  int iAfterKey = -1;
  int i;

  for(i=0; i<pInfo->nConstraint; i++){
    struct sqlite3_index_constraint *p = &pInfo->aConstraint[i];
    if( p->usable==0 ) continue;
    if( p->op!=SQLITE_INDEX_CONSTRAINT_EQ ) continue;

    if( p->iColumn==IIC_INDEX_NAME ){
      iIdxName = i;
    }
    if( p->iColumn==IIC_AFTER_KEY ){
      iAfterKey = i;
    }
  }

  if( iIdxName<0 ){
    pInfo->estimatedCost = 1000000000.0;
  }else{
    pInfo->aConstraintUsage[iIdxName].argvIndex = 1;
    pInfo->aConstraintUsage[iIdxName].omit = 1;
    if( iAfterKey<0 ){
      pInfo->estimatedCost = 1000000.0;
    }else{
      pInfo->aConstraintUsage[iAfterKey].argvIndex = 2;
      pInfo->aConstraintUsage[iAfterKey].omit = 1;
      pInfo->estimatedCost = 1000.0;
    }
  }

  return SQLITE_OK;
}
