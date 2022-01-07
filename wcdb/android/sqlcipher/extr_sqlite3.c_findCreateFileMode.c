
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int mode_t ;
typedef scalar_t__ gid_t ;


 int MAX_PATHNAME ;
 int SQLITE_OK ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_URI ;
 int SQLITE_OPEN_WAL ;
 int getFileMode (char const*,int*,scalar_t__*,scalar_t__*) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3Strlen30 (char const*) ;
 char* sqlite3_uri_parameter (char const*,char*) ;

__attribute__((used)) static int findCreateFileMode(
  const char *zPath,
  int flags,
  mode_t *pMode,
  uid_t *pUid,
  gid_t *pGid
){
  int rc = SQLITE_OK;
  *pMode = 0;
  *pUid = 0;
  *pGid = 0;
  if( flags & (SQLITE_OPEN_WAL|SQLITE_OPEN_MAIN_JOURNAL) ){
    char zDb[MAX_PATHNAME+1];
    int nDb;
    nDb = sqlite3Strlen30(zPath) - 1;
    while( zPath[nDb]!='-' ){




      if( nDb==0 || zPath[nDb]=='.' ) return SQLITE_OK;
      nDb--;
    }
    memcpy(zDb, zPath, nDb);
    zDb[nDb] = '\0';

    rc = getFileMode(zDb, pMode, pUid, pGid);
  }else if( flags & SQLITE_OPEN_DELETEONCLOSE ){
    *pMode = 0600;
  }else if( flags & SQLITE_OPEN_URI ){




    const char *z = sqlite3_uri_parameter(zPath, "modeof");
    if( z ){
      rc = getFileMode(z, pMode, pUid, pGid);
  }
  }
  return rc;
}
