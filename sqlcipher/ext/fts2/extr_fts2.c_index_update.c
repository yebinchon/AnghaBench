
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_value ;
typedef int fulltext_vtab ;


 int SQLITE_OK ;
 int content_update (int *,int **,int ) ;
 int deleteTerms (int *,int ) ;
 int initPendingTerms (int *,int ) ;
 int insertTerms (int *,int ,int **) ;

__attribute__((used)) static int index_update(fulltext_vtab *v, sqlite_int64 iRow,
                        sqlite3_value **pValues){
  int rc = initPendingTerms(v, iRow);
  if( rc!=SQLITE_OK ) return rc;



  rc = deleteTerms(v, iRow);
  if( rc!=SQLITE_OK ) return rc;

  rc = content_update(v, pValues, iRow);
  if( rc!=SQLITE_OK ) return rc;


  return insertTerms(v, iRow, pValues);
}
