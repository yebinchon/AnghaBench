
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Fts3Hash ;


 int SQLITE_ANY ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts3TokenizerFunc ;
 int intTestFunc ;
 int sqlite3_create_function (int *,char const*,int,int const,void*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int testFunc ;

int sqlite3Fts3InitHashTable(
  sqlite3 *db,
  Fts3Hash *pHash,
  const char *zName
){
  int rc = SQLITE_OK;
  void *p = (void *)pHash;
  const int any = SQLITE_ANY;
  if( SQLITE_OK==rc ){
    rc = sqlite3_create_function(db, zName, 1, any, p, fts3TokenizerFunc, 0, 0);
  }
  if( SQLITE_OK==rc ){
    rc = sqlite3_create_function(db, zName, 2, any, p, fts3TokenizerFunc, 0, 0);
  }
  return rc;
}
