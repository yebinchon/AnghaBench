
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SLConn {scalar_t__ fd; int iLog; } ;
struct TYPE_2__ {scalar_t__* zPrefix; char* zIdx; int bReuse; } ;
typedef int FILE ;


 int ENVIRONMENT_VARIABLE1_NAME ;
 int ENVIRONMENT_VARIABLE2_NAME ;
 int SQLITE_IOERR ;
 int atoi (char*) ;
 int fclose (int *) ;
 void* fopen (char*,char*) ;
 int getProcessId () ;
 char* getenv (int ) ;
 int sqlite3_free (char*) ;
 int sqlite3_log (int ,char*) ;
 char* sqlite3_mprintf (char*,scalar_t__*,int ) ;
 int sqlite3_snprintf (int,...) ;
 TYPE_1__ sqllogglobal ;
 int strlen (char*) ;

__attribute__((used)) static void sqllogOpenlog(struct SLConn *p){

  if( p->fd==0 ){
    char *zLog;



    if( sqllogglobal.zPrefix[0]==0 ){
      FILE *fd;
      char *zVar = getenv(ENVIRONMENT_VARIABLE1_NAME);
      if( zVar==0 || strlen(zVar)+10>=(sizeof(sqllogglobal.zPrefix)) ) return;
      sqlite3_snprintf(sizeof(sqllogglobal.zPrefix), sqllogglobal.zPrefix,
                        "%s/sqllog_%05d", zVar, getProcessId());
      sqlite3_snprintf(sizeof(sqllogglobal.zIdx), sqllogglobal.zIdx,
                        "%s.idx", sqllogglobal.zPrefix);
      if( getenv(ENVIRONMENT_VARIABLE2_NAME) ){
        sqllogglobal.bReuse = atoi(getenv(ENVIRONMENT_VARIABLE2_NAME));
      }
      fd = fopen(sqllogglobal.zIdx, "w");
      if( fd ) fclose(fd);
    }


    zLog = sqlite3_mprintf("%s_%05d.sql", sqllogglobal.zPrefix, p->iLog);
    p->fd = fopen(zLog, "w");
    sqlite3_free(zLog);
    if( p->fd==0 ){
      sqlite3_log(SQLITE_IOERR, "sqllogOpenlog(): Failed to open log file");
    }
  }
}
