
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int fts2Hash ;


 int SQLITE_ANY ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int intTestFunc ;
 int scalarFunc ;
 int sqlite3_create_function (int *,char const*,int,int const,void*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int testFunc ;

int sqlite3Fts2InitHashTable(
  sqlite3 *db,
  fts2Hash *pHash,
  const char *zName
){
  int rc = SQLITE_OK;
  void *p = (void *)pHash;
  const int any = SQLITE_ANY;
  char *zTest = 0;
  char *zTest2 = 0;
  if( rc!=SQLITE_OK
   || (rc = sqlite3_create_function(db, zName, 1, any, p, scalarFunc, 0, 0))
   || (rc = sqlite3_create_function(db, zName, 2, any, p, scalarFunc, 0, 0))





  );

  sqlite3_free(zTest);
  sqlite3_free(zTest2);
  return rc;
}
