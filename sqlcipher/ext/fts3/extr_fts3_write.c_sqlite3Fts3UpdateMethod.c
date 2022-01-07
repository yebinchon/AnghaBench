
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int aSzDel ;
struct TYPE_11__ {int bHasStat; scalar_t__ pSegments; int nColumn; scalar_t__ zContentTbl; scalar_t__ bFts4; scalar_t__ bHasDocsize; int iPrevDocid; int db; } ;
typedef TYPE_1__ Fts3Table ;


 int FTS_CORRUPT_VTAB ;
 int SQLITE_CONSTRAINT ;
 scalar_t__ SQLITE_INTEGER ;
 int SQLITE_NOMEM ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_REPLACE ;
 int assert (int) ;
 int fts3DeleteByRowid (TYPE_1__*,int *,int*,int *) ;
 int fts3InsertData (TYPE_1__*,int **,int *) ;
 int fts3InsertDocsize (int*,TYPE_1__*,int *) ;
 int fts3InsertTerms (TYPE_1__*,int,int **,int *) ;
 int fts3PendingTermsDocid (TYPE_1__*,int ,int,int ) ;
 int fts3SpecialInsert (TYPE_1__*,int *) ;
 int fts3UpdateDocTotals (int*,TYPE_1__*,int *,int *,int) ;
 int fts3Writelock (TYPE_1__*) ;
 int memset (int *,int ,int) ;
 int sqlite3Fts3SegmentsClose (TYPE_1__*) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc64 (int) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;
 scalar_t__ sqlite3_vtab_on_conflict (int ) ;

int sqlite3Fts3UpdateMethod(
  sqlite3_vtab *pVtab,
  int nArg,
  sqlite3_value **apVal,
  sqlite_int64 *pRowid
){
  Fts3Table *p = (Fts3Table *)pVtab;
  int rc = SQLITE_OK;
  u32 *aSzIns = 0;
  u32 *aSzDel = 0;
  int nChng = 0;
  int bInsertDone = 0;



  assert( p->bHasStat==0 || p->bHasStat==1 );

  assert( p->pSegments==0 );
  assert(
      nArg==1
   || nArg==(2 + p->nColumn + 3)
  );





  if( nArg>1
   && sqlite3_value_type(apVal[0])==SQLITE_NULL
   && sqlite3_value_type(apVal[p->nColumn+2])!=SQLITE_NULL
  ){
    rc = fts3SpecialInsert(p, apVal[p->nColumn+2]);
    goto update_out;
  }

  if( nArg>1 && sqlite3_value_int(apVal[2 + p->nColumn + 2])<0 ){
    rc = SQLITE_CONSTRAINT;
    goto update_out;
  }


  aSzDel = sqlite3_malloc64(sizeof(aSzDel[0])*((sqlite3_int64)p->nColumn+1)*2);
  if( aSzDel==0 ){
    rc = SQLITE_NOMEM;
    goto update_out;
  }
  aSzIns = &aSzDel[p->nColumn+1];
  memset(aSzDel, 0, sizeof(aSzDel[0])*(p->nColumn+1)*2);

  rc = fts3Writelock(p);
  if( rc!=SQLITE_OK ) goto update_out;
  if( nArg>1 && p->zContentTbl==0 ){

    sqlite3_value *pNewRowid = apVal[3+p->nColumn];
    if( sqlite3_value_type(pNewRowid)==SQLITE_NULL ){
      pNewRowid = apVal[1];
    }

    if( sqlite3_value_type(pNewRowid)!=SQLITE_NULL && (
        sqlite3_value_type(apVal[0])==SQLITE_NULL
     || sqlite3_value_int64(apVal[0])!=sqlite3_value_int64(pNewRowid)
    )){
      if( sqlite3_vtab_on_conflict(p->db)==SQLITE_REPLACE ){
        rc = fts3DeleteByRowid(p, pNewRowid, &nChng, aSzDel);
      }else{
        rc = fts3InsertData(p, apVal, pRowid);
        bInsertDone = 1;
      }
    }
  }
  if( rc!=SQLITE_OK ){
    goto update_out;
  }


  if( sqlite3_value_type(apVal[0])!=SQLITE_NULL ){
    assert( sqlite3_value_type(apVal[0])==SQLITE_INTEGER );
    rc = fts3DeleteByRowid(p, apVal[0], &nChng, aSzDel);
  }


  if( nArg>1 && rc==SQLITE_OK ){
    int iLangid = sqlite3_value_int(apVal[2 + p->nColumn + 2]);
    if( bInsertDone==0 ){
      rc = fts3InsertData(p, apVal, pRowid);
      if( rc==SQLITE_CONSTRAINT && p->zContentTbl==0 ){
        rc = FTS_CORRUPT_VTAB;
      }
    }
    if( rc==SQLITE_OK ){
      rc = fts3PendingTermsDocid(p, 0, iLangid, *pRowid);
    }
    if( rc==SQLITE_OK ){
      assert( p->iPrevDocid==*pRowid );
      rc = fts3InsertTerms(p, iLangid, apVal, aSzIns);
    }
    if( p->bHasDocsize ){
      fts3InsertDocsize(&rc, p, aSzIns);
    }
    nChng++;
  }

  if( p->bFts4 ){
    fts3UpdateDocTotals(&rc, p, aSzIns, aSzDel, nChng);
  }

 update_out:
  sqlite3_free(aSzDel);
  sqlite3Fts3SegmentsClose(p);
  return rc;
}
