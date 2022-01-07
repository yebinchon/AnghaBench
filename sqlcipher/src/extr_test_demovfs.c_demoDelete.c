
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;


 scalar_t__ ENOENT ;
 int MAXPATHNAME ;
 int O_RDONLY ;
 int SQLITE_IOERR_DELETE ;
 int SQLITE_OK ;
 int close (int) ;
 scalar_t__ errno ;
 int fsync (int) ;
 int open (char*,int ,int ) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 int strlen (char*) ;
 int unlink (char const*) ;

__attribute__((used)) static int demoDelete(sqlite3_vfs *pVfs, const char *zPath, int dirSync){
  int rc;

  rc = unlink(zPath);
  if( rc!=0 && errno==ENOENT ) return SQLITE_OK;

  if( rc==0 && dirSync ){
    int dfd;
    int i;
    char zDir[MAXPATHNAME+1];


    sqlite3_snprintf(MAXPATHNAME, zDir, "%s", zPath);
    zDir[MAXPATHNAME] = '\0';
    for(i=strlen(zDir); i>1 && zDir[i]!='/'; i++);
    zDir[i] = '\0';


    dfd = open(zDir, O_RDONLY, 0);
    if( dfd<0 ){
      rc = -1;
    }else{
      rc = fsync(dfd);
      close(dfd);
    }
  }
  return (rc==0 ? SQLITE_OK : SQLITE_IOERR_DELETE);
}
