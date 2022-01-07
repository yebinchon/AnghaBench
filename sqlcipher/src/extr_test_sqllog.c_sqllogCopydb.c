
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SLConn {int fd; int db; } ;
typedef int sqlite3_backup ;
typedef int sqlite3 ;
struct TYPE_2__ {int bRec; int iClock; int zIdx; int zPrefix; int iNextDb; scalar_t__ bReuse; } ;
typedef int FILE ;


 int SQLITE_OK ;
 int SQLLOG_NAMESZ ;
 int assert (int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,...) ;
 int sqlite3_backup_finish (int *) ;
 int * sqlite3_backup_init (int *,char*,int ,char*) ;
 int sqlite3_backup_step (int *,int) ;
 int sqlite3_close (int *) ;
 int sqlite3_errcode (int *) ;
 int sqlite3_exec (int *,char*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 int sqlite3_log (int,char*) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_open (char*,int **) ;
 int sqllogFindAttached (int ,char const*,char*,char*) ;
 char* sqllogFindFile (char*) ;
 TYPE_1__ sqllogglobal ;

__attribute__((used)) static void sqllogCopydb(struct SLConn *p, const char *zSearch, int bLog){
  char zName[SQLLOG_NAMESZ];
  char zFile[SQLLOG_NAMESZ];
  char *zFree;
  char *zInit = 0;
  int rc;

  rc = sqllogFindAttached(p->db, zSearch, zName, zFile);
  if( rc!=SQLITE_OK ) return;

  if( zFile[0]=='\0' ){
    zInit = sqlite3_mprintf("");
  }else{
    if( sqllogglobal.bReuse ){
      zInit = sqllogFindFile(zFile);
    }else{
      zInit = 0;
    }
    if( zInit==0 ){
      int rc;
      sqlite3 *copy = 0;
      int iDb;


      iDb = sqllogglobal.iNextDb++;
      zInit = sqlite3_mprintf("%s_%02d.db", sqllogglobal.zPrefix, iDb);


      assert( sqllogglobal.bRec==0 );
      sqllogglobal.bRec = 1;
      rc = sqlite3_open(zInit, &copy);
      if( rc==SQLITE_OK ){
        sqlite3_backup *pBak;
        sqlite3_exec(copy, "PRAGMA synchronous = 0", 0, 0, 0);
        pBak = sqlite3_backup_init(copy, "main", p->db, zName);
        if( pBak ){
          sqlite3_backup_step(pBak, -1);
          rc = sqlite3_backup_finish(pBak);
        }else{
          rc = sqlite3_errcode(copy);
        }
        sqlite3_close(copy);
      }
      sqllogglobal.bRec = 0;

      if( rc==SQLITE_OK ){

        FILE *fd = fopen(sqllogglobal.zIdx, "a");
        if( fd ){
          fprintf(fd, "%d %s\n", iDb, zFile);
          fclose(fd);
        }
      }else{
        sqlite3_log(rc, "sqllogCopydb(): error backing up database");
      }
    }
  }

  if( bLog ){
    zFree = sqlite3_mprintf("ATTACH '%q' AS '%q'; -- clock=%d\n",
        zInit, zName, sqllogglobal.iClock++
    );
  }else{
    zFree = sqlite3_mprintf("-- Main database is '%q'\n", zInit);
  }
  fprintf(p->fd, "%s", zFree);
  sqlite3_free(zFree);

  sqlite3_free(zInit);
}
