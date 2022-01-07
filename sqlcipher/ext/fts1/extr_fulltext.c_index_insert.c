
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_value ;
struct TYPE_5__ {int pTokenizer; int db; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int HashElem ;
typedef int Hash ;
typedef int DocList ;


 int HashClear (int *) ;
 int * HashData (int *) ;
 int * HashFirst (int *) ;
 int HashKey (int *) ;
 int HashKeysize (int *) ;
 int * HashNext (int *) ;
 int SQLITE_OK ;
 int build_terms (int *,int ,char const*,int ) ;
 int content_insert (TYPE_1__*,int *,char const*,int) ;
 int docListDelete (int *) ;
 int index_insert_term (TYPE_1__*,int ,int ,int ,int *) ;
 int sqlite3_last_insert_rowid (int ) ;

__attribute__((used)) static int index_insert(fulltext_vtab *v,
                        sqlite3_value *pRequestRowid, const char *zText,
                        sqlite_int64 *piRowid){
  Hash terms;
  HashElem *e;

  int rc = content_insert(v, pRequestRowid, zText, -1);
  if( rc!=SQLITE_OK ) return rc;
  *piRowid = sqlite3_last_insert_rowid(v->db);

  if( !zText ) return SQLITE_OK;

  rc = build_terms(&terms, v->pTokenizer, zText, *piRowid);
  if( rc!=SQLITE_OK ) return rc;

  for(e=HashFirst(&terms); e; e=HashNext(e)){
    DocList *p = HashData(e);
    rc = index_insert_term(v, HashKey(e), HashKeysize(e), *piRowid, p);
    if( rc!=SQLITE_OK ) break;
  }

  for(e=HashFirst(&terms); e; e=HashNext(e)){
    DocList *p = HashData(e);
    docListDelete(p);
  }
  HashClear(&terms);
  return rc;
}
