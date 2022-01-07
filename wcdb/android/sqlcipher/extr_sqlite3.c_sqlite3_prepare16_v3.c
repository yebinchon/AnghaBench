
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 unsigned int SQLITE_PREPARE_MASK ;
 unsigned int SQLITE_PREPARE_SAVESQL ;
 int assert (int) ;
 int sqlite3Prepare16 (int *,void const*,int,unsigned int,int **,void const**) ;

int sqlite3_prepare16_v3(
  sqlite3 *db,
  const void *zSql,
  int nBytes,
  unsigned int prepFlags,
  sqlite3_stmt **ppStmt,
  const void **pzTail
){
  int rc;
  rc = sqlite3Prepare16(db,zSql,nBytes,
         SQLITE_PREPARE_SAVESQL|(prepFlags&SQLITE_PREPARE_MASK),
         ppStmt,pzTail);
  assert( rc==SQLITE_OK || ppStmt==0 || *ppStmt==0 );
  return rc;
}
