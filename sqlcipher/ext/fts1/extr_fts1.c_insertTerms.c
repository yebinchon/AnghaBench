
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_value ;
struct TYPE_4__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int fts1Hash ;


 int SQLITE_OK ;
 int buildTerms (TYPE_1__*,int *,int ,char*,int) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int insertTerms(fulltext_vtab *v, fts1Hash *terms, sqlite_int64 iRowid,
                sqlite3_value **pValues){
  int i;
  for(i = 0; i < v->nColumn ; ++i){
    char *zText = (char*)sqlite3_value_text(pValues[i]);
    int rc = buildTerms(v, terms, iRowid, zText, i);
    if( rc!=SQLITE_OK ) return rc;
  }
  return SQLITE_OK;
}
