
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_16__ {scalar_t__ zErrMsg; } ;
typedef TYPE_4__ sqlite3_vtab ;
typedef int sqlite3_value ;
typedef scalar_t__ i64 ;
struct TYPE_18__ {int nCol; scalar_t__ eContent; int * pzErrmsg; int zName; int db; } ;
struct TYPE_14__ {int zErrMsg; } ;
struct TYPE_15__ {TYPE_6__* pConfig; TYPE_2__ base; } ;
struct TYPE_13__ {int eState; } ;
struct TYPE_17__ {TYPE_3__ p; int pStorage; TYPE_1__ ts; } ;
typedef TYPE_5__ Fts5FullTable ;
typedef TYPE_6__ Fts5Config ;


 scalar_t__ FTS5_CONTENT_NORMAL ;
 int SQLITE_ABORT ;
 int SQLITE_ERROR ;
 int SQLITE_INTEGER ;
 int SQLITE_MISMATCH ;
 int SQLITE_NULL ;
 int SQLITE_OK ;
 int SQLITE_REPLACE ;
 int assert (int) ;
 scalar_t__ fts5IsContentless (TYPE_5__*) ;
 int fts5SpecialDelete (TYPE_5__*,int **) ;
 int fts5SpecialInsert (TYPE_5__*,char const*,int *) ;
 int fts5StorageInsert (int*,TYPE_5__*,int **,int *) ;
 int fts5TripCursors (TYPE_5__*) ;
 int sqlite3Fts5StorageContentInsert (int ,int **,int *) ;
 int sqlite3Fts5StorageDelete (int ,scalar_t__,int ) ;
 int sqlite3Fts5StorageIndexInsert (int ,int **,int ) ;
 int sqlite3_mprintf (char*,char*,int ) ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 int sqlite3_value_numeric_type (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;
 int sqlite3_vtab_on_conflict (int ) ;

__attribute__((used)) static int fts5UpdateMethod(
  sqlite3_vtab *pVtab,
  int nArg,
  sqlite3_value **apVal,
  sqlite_int64 *pRowid
){
  Fts5FullTable *pTab = (Fts5FullTable*)pVtab;
  Fts5Config *pConfig = pTab->p.pConfig;
  int eType0;
  int rc = SQLITE_OK;


  assert( pTab->ts.eState==1 );

  assert( pVtab->zErrMsg==0 );
  assert( nArg==1 || nArg==(2+pConfig->nCol+2) );
  assert( sqlite3_value_type(apVal[0])==SQLITE_INTEGER
       || sqlite3_value_type(apVal[0])==SQLITE_NULL
  );
  assert( pTab->p.pConfig->pzErrmsg==0 );
  pTab->p.pConfig->pzErrmsg = &pTab->p.base.zErrMsg;


  fts5TripCursors(pTab);

  eType0 = sqlite3_value_type(apVal[0]);
  if( eType0==SQLITE_NULL
   && sqlite3_value_type(apVal[2+pConfig->nCol])!=SQLITE_NULL
  ){

    const char *z = (const char*)sqlite3_value_text(apVal[2+pConfig->nCol]);
    if( pConfig->eContent!=FTS5_CONTENT_NORMAL
      && 0==sqlite3_stricmp("delete", z)
    ){
      rc = fts5SpecialDelete(pTab, apVal);
    }else{
      rc = fts5SpecialInsert(pTab, z, apVal[2 + pConfig->nCol + 1]);
    }
  }else{
    int eConflict = SQLITE_ABORT;
    if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
      eConflict = sqlite3_vtab_on_conflict(pConfig->db);
    }

    assert( eType0==SQLITE_INTEGER || eType0==SQLITE_NULL );
    assert( nArg!=1 || eType0==SQLITE_INTEGER );



    if( eType0==SQLITE_INTEGER && fts5IsContentless(pTab) ){
      pTab->p.base.zErrMsg = sqlite3_mprintf(
          "cannot %s contentless fts5 table: %s",
          (nArg>1 ? "UPDATE" : "DELETE from"), pConfig->zName
      );
      rc = SQLITE_ERROR;
    }


    else if( nArg==1 ){
      i64 iDel = sqlite3_value_int64(apVal[0]);
      rc = sqlite3Fts5StorageDelete(pTab->pStorage, iDel, 0);
    }


    else{
      int eType1 = sqlite3_value_numeric_type(apVal[1]);

      if( eType1!=SQLITE_INTEGER && eType1!=SQLITE_NULL ){
        rc = SQLITE_MISMATCH;
      }

      else if( eType0!=SQLITE_INTEGER ){

        if( eConflict==SQLITE_REPLACE && eType1==SQLITE_INTEGER ){
          i64 iNew = sqlite3_value_int64(apVal[1]);
          rc = sqlite3Fts5StorageDelete(pTab->pStorage, iNew, 0);
        }
        fts5StorageInsert(&rc, pTab, apVal, pRowid);
      }


      else{
        i64 iOld = sqlite3_value_int64(apVal[0]);
        i64 iNew = sqlite3_value_int64(apVal[1]);
        if( eType1==SQLITE_INTEGER && iOld!=iNew ){
          if( eConflict==SQLITE_REPLACE ){
            rc = sqlite3Fts5StorageDelete(pTab->pStorage, iOld, 0);
            if( rc==SQLITE_OK ){
              rc = sqlite3Fts5StorageDelete(pTab->pStorage, iNew, 0);
            }
            fts5StorageInsert(&rc, pTab, apVal, pRowid);
          }else{
            rc = sqlite3Fts5StorageContentInsert(pTab->pStorage, apVal, pRowid);
            if( rc==SQLITE_OK ){
              rc = sqlite3Fts5StorageDelete(pTab->pStorage, iOld, 0);
            }
            if( rc==SQLITE_OK ){
              rc = sqlite3Fts5StorageIndexInsert(pTab->pStorage, apVal,*pRowid);
            }
          }
        }else{
          rc = sqlite3Fts5StorageDelete(pTab->pStorage, iOld, 0);
          fts5StorageInsert(&rc, pTab, apVal, pRowid);
        }
      }
    }
  }

  pTab->p.pConfig->pzErrmsg = 0;
  return rc;
}
