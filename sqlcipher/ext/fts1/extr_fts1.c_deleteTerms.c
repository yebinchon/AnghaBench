
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_5__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int fts1Hash ;


 int SQLITE_OK ;
 int buildTerms (TYPE_1__*,int *,int ,char const*,int) ;
 int content_select (TYPE_1__*,int ,char const***) ;
 int freeStringArray (int,char const**) ;

__attribute__((used)) static int deleteTerms(fulltext_vtab *v, fts1Hash *pTerms, sqlite_int64 iRowid){
  const char **pValues;
  int i;

  int rc = content_select(v, iRowid, &pValues);
  if( rc!=SQLITE_OK ) return rc;

  for(i = 0 ; i < v->nColumn; ++i) {
    rc = buildTerms(v, pTerms, iRowid, pValues[i], -1);
    if( rc!=SQLITE_OK ) break;
  }

  freeStringArray(v->nColumn, pValues);
  return SQLITE_OK;
}
