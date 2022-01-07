
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int fulltext_vtab ;


 int SQLITE_OK ;
 int content_delete (int *,int ) ;
 int deleteTerms (int *,int ) ;
 int initPendingTerms (int *,int ) ;

__attribute__((used)) static int index_delete(fulltext_vtab *v, sqlite_int64 iRow){
  int rc = initPendingTerms(v, iRow);
  if( rc!=SQLITE_OK ) return rc;

  rc = deleteTerms(v, iRow);
  if( rc!=SQLITE_OK ) return rc;

  return content_delete(v, iRow);
}
