
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_6__ {int pTokenizer; } ;
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
 int build_terms (int *,int ,char*,int ) ;
 int content_delete (TYPE_1__*,int ) ;
 int content_select (TYPE_1__*,int ,char**) ;
 int docListDelete (int *) ;
 int free (char*) ;
 int index_delete_term (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int index_delete(fulltext_vtab *v, sqlite_int64 iRow){
  char *zText;
  Hash terms;
  HashElem *e;

  int rc = content_select(v, iRow, &zText);
  if( rc!=SQLITE_OK ) return rc;

  rc = build_terms(&terms, v->pTokenizer, zText, iRow);
  free(zText);
  if( rc!=SQLITE_OK ) return rc;

  for(e=HashFirst(&terms); e; e=HashNext(e)){
    rc = index_delete_term(v, HashKey(e), HashKeysize(e), iRow);
    if( rc!=SQLITE_OK ) break;
  }
  for(e=HashFirst(&terms); e; e=HashNext(e)){
    DocList *p = HashData(e);
    docListDelete(p);
  }
  HashClear(&terms);

  return content_delete(v, iRow);
}
