
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 int F_OK ;
 int R_OK ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_ACCESS_READ ;
 int SQLITE_ACCESS_READWRITE ;
 int SQLITE_OK ;
 int W_OK ;
 int access (char const*,int) ;
 int assert (int) ;

__attribute__((used)) static int demoAccess(
  sqlite3_vfs *pVfs,
  const char *zPath,
  int flags,
  int *pResOut
){
  int rc;
  int eAccess = F_OK;

  assert( flags==SQLITE_ACCESS_EXISTS
       || flags==SQLITE_ACCESS_READ
       || flags==SQLITE_ACCESS_READWRITE
  );

  if( flags==SQLITE_ACCESS_READWRITE ) eAccess = R_OK|W_OK;
  if( flags==SQLITE_ACCESS_READ ) eAccess = R_OK;

  rc = access(zPath, eAccess);
  *pResOut = (rc==0);
  return SQLITE_OK;
}
