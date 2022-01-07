
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sqlite3_index_orderby {scalar_t__ iColumn; scalar_t__ desc; } ;
struct sqlite3_index_constraint {scalar_t__ usable; int op; scalar_t__ iColumn; } ;
typedef int sqlite3_vtab ;
typedef int sqlite3_int64 ;
struct TYPE_8__ {scalar_t__ idxNum; int estimatedCost; int nConstraint; int nOrderBy; char* idxStr; int orderByConsumed; struct sqlite3_index_orderby* aOrderBy; TYPE_1__* aConstraintUsage; struct sqlite3_index_constraint* aConstraint; } ;
typedef TYPE_2__ sqlite3_index_info ;
struct TYPE_9__ {scalar_t__ nColumn; scalar_t__ pSegments; } ;
struct TYPE_7__ {int omit; int argvIndex; } ;
typedef TYPE_3__ Fts3Table ;


 scalar_t__ FTS3_DOCID_SEARCH ;
 void* FTS3_FULLSCAN_SEARCH ;
 scalar_t__ FTS3_FULLTEXT_SEARCH ;
 scalar_t__ FTS3_HAVE_DOCID_GE ;
 scalar_t__ FTS3_HAVE_DOCID_LE ;
 scalar_t__ FTS3_HAVE_LANGID ;
 int SQLITE_INDEX_CONSTRAINT_EQ ;




 int SQLITE_INDEX_CONSTRAINT_MATCH ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3SetEstimatedRows (TYPE_2__*,int) ;
 int fts3SetUniqueFlag (TYPE_2__*) ;

__attribute__((used)) static int fts3BestIndexMethod(sqlite3_vtab *pVTab, sqlite3_index_info *pInfo){
  Fts3Table *p = (Fts3Table *)pVTab;
  int i;
  int iCons = -1;

  int iLangidCons = -1;
  int iDocidGe = -1;
  int iDocidLe = -1;
  int iIdx;





  pInfo->idxNum = FTS3_FULLSCAN_SEARCH;
  pInfo->estimatedCost = 5000000;
  for(i=0; i<pInfo->nConstraint; i++){
    int bDocid;
    struct sqlite3_index_constraint *pCons = &pInfo->aConstraint[i];
    if( pCons->usable==0 ){
      if( pCons->op==SQLITE_INDEX_CONSTRAINT_MATCH ){





        pInfo->idxNum = FTS3_FULLSCAN_SEARCH;
        pInfo->estimatedCost = 1e50;
        fts3SetEstimatedRows(pInfo, ((sqlite3_int64)1) << 50);
        return SQLITE_OK;
      }
      continue;
    }

    bDocid = (pCons->iColumn<0 || pCons->iColumn==p->nColumn+1);


    if( iCons<0 && pCons->op==SQLITE_INDEX_CONSTRAINT_EQ && bDocid ){
      pInfo->idxNum = FTS3_DOCID_SEARCH;
      pInfo->estimatedCost = 1.0;
      iCons = i;
    }
    if( pCons->op==SQLITE_INDEX_CONSTRAINT_MATCH
     && pCons->iColumn>=0 && pCons->iColumn<=p->nColumn
    ){
      pInfo->idxNum = FTS3_FULLTEXT_SEARCH + pCons->iColumn;
      pInfo->estimatedCost = 2.0;
      iCons = i;
    }


    if( pCons->op==SQLITE_INDEX_CONSTRAINT_EQ
     && pCons->iColumn==p->nColumn + 2
    ){
      iLangidCons = i;
    }

    if( bDocid ){
      switch( pCons->op ){
        case 131:
        case 130:
          iDocidGe = i;
          break;

        case 129:
        case 128:
          iDocidLe = i;
          break;
      }
    }
  }


  if( pInfo->idxNum==FTS3_DOCID_SEARCH ) fts3SetUniqueFlag(pInfo);

  iIdx = 1;
  if( iCons>=0 ){
    pInfo->aConstraintUsage[iCons].argvIndex = iIdx++;
    pInfo->aConstraintUsage[iCons].omit = 1;
  }
  if( iLangidCons>=0 ){
    pInfo->idxNum |= FTS3_HAVE_LANGID;
    pInfo->aConstraintUsage[iLangidCons].argvIndex = iIdx++;
  }
  if( iDocidGe>=0 ){
    pInfo->idxNum |= FTS3_HAVE_DOCID_GE;
    pInfo->aConstraintUsage[iDocidGe].argvIndex = iIdx++;
  }
  if( iDocidLe>=0 ){
    pInfo->idxNum |= FTS3_HAVE_DOCID_LE;
    pInfo->aConstraintUsage[iDocidLe].argvIndex = iIdx++;
  }




  if( pInfo->nOrderBy==1 ){
    struct sqlite3_index_orderby *pOrder = &pInfo->aOrderBy[0];
    if( pOrder->iColumn<0 || pOrder->iColumn==p->nColumn+1 ){
      if( pOrder->desc ){
        pInfo->idxStr = "DESC";
      }else{
        pInfo->idxStr = "ASC";
      }
      pInfo->orderByConsumed = 1;
    }
  }

  assert( p->pSegments==0 );
  return SQLITE_OK;
}
