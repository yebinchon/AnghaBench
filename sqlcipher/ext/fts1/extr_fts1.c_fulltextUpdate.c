
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
struct TYPE_6__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int fts1HashElem ;
typedef int fts1Hash ;
typedef int DocList ;


 int FTS1_HASH_STRING ;
 int SQLITE_ERROR ;
 scalar_t__ SQLITE_INTEGER ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int TRACE (char*) ;
 int assert (int) ;
 int docListDelete (int *) ;
 int fts1HashClear (int *) ;
 int * fts1HashData (int *) ;
 int * fts1HashFirst (int *) ;
 int fts1HashInit (int *,int ,int) ;
 int fts1HashKey (int *) ;
 int fts1HashKeysize (int *) ;
 int * fts1HashNext (int *) ;
 int index_delete (TYPE_1__*,scalar_t__,int *) ;
 int index_insert (TYPE_1__*,int *,int **,scalar_t__*,int *) ;
 int index_insert_term (TYPE_1__*,int ,int ,int *) ;
 int index_update (TYPE_1__*,scalar_t__,int **,int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int fulltextUpdate(sqlite3_vtab *pVtab, int nArg, sqlite3_value **ppArg,
                   sqlite_int64 *pRowid){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;
  fts1Hash terms;
  int rc;
  fts1HashElem *e;

  TRACE(("FTS1 Update %p\n", pVtab));

  fts1HashInit(&terms, FTS1_HASH_STRING, 1);

  if( nArg<2 ){
    rc = index_delete(v, sqlite3_value_int64(ppArg[0]), &terms);
  } else if( sqlite3_value_type(ppArg[0]) != SQLITE_NULL ){






    sqlite_int64 rowid = sqlite3_value_int64(ppArg[0]);
    if( sqlite3_value_type(ppArg[1]) != SQLITE_INTEGER ||
      sqlite3_value_int64(ppArg[1]) != rowid ){
      rc = SQLITE_ERROR;
    } else {
      assert( nArg==2+v->nColumn+1);
      rc = index_update(v, rowid, &ppArg[2], &terms);
    }
  } else {





    assert( nArg==2+v->nColumn+1);
    rc = index_insert(v, ppArg[1], &ppArg[2], pRowid, &terms);
  }

  if( rc==SQLITE_OK ){

    for(e=fts1HashFirst(&terms); e; e=fts1HashNext(e)){
      DocList *p = fts1HashData(e);
      rc = index_insert_term(v, fts1HashKey(e), fts1HashKeysize(e), p);
      if( rc!=SQLITE_OK ) break;
    }
  }


  for(e=fts1HashFirst(&terms); e; e=fts1HashNext(e)){
    DocList *p = fts1HashData(e);
    docListDelete(p);
  }
  fts1HashClear(&terms);

  return rc;
}
