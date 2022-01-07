
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
struct TYPE_8__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;


 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 scalar_t__ SQLITE_INTEGER ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int TRACE (char*) ;
 int assert (int) ;
 int clearPendingTerms (TYPE_1__*) ;
 int content_exists (TYPE_1__*) ;
 int index_delete (TYPE_1__*,scalar_t__) ;
 int index_insert (TYPE_1__*,int *,int **,scalar_t__*) ;
 int index_update (TYPE_1__*,scalar_t__,int **) ;
 int segdir_delete_all (TYPE_1__*) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int fulltextUpdate(sqlite3_vtab *pVtab, int nArg, sqlite3_value **ppArg,
                   sqlite_int64 *pRowid){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;
  int rc;

  TRACE(("FTS2 Update %p\n", pVtab));

  if( nArg<2 ){
    rc = index_delete(v, sqlite3_value_int64(ppArg[0]));
    if( rc==SQLITE_OK ){



      rc = content_exists(v);
      if( rc==SQLITE_ROW ){
        rc = SQLITE_OK;
      }else if( rc==SQLITE_DONE ){



        rc = clearPendingTerms(v);
        if( rc==SQLITE_OK ){
          rc = segdir_delete_all(v);
        }
      }
    }
  } else if( sqlite3_value_type(ppArg[0]) != SQLITE_NULL ){






    sqlite_int64 rowid = sqlite3_value_int64(ppArg[0]);
    if( sqlite3_value_type(ppArg[1]) != SQLITE_INTEGER ||
      sqlite3_value_int64(ppArg[1]) != rowid ){
      rc = SQLITE_ERROR;
    } else {
      assert( nArg==2+v->nColumn+1);
      rc = index_update(v, rowid, &ppArg[2]);
    }
  } else {





    assert( nArg==2+v->nColumn+1);
    rc = index_insert(v, ppArg[1], &ppArg[2], pRowid);
  }

  return rc;
}
