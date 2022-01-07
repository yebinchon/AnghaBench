
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rio ;
typedef int rdbSaveInfo ;
struct TYPE_2__ {int lastbgsave_status; int lastsave; scalar_t__ dirty; scalar_t__ rdb_save_incremental_fsync; } ;
typedef int FILE ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ EOF ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int MAXPATHLEN ;
 int RDBFLAGS_NONE ;
 int REDIS_AUTOSYNC_BYTES ;
 int errno ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fsync (int ) ;
 char* getcwd (char*,int) ;
 scalar_t__ getpid () ;
 int rdbSaveRio (int *,int*,int ,int *) ;
 int rename (char*,char*) ;
 int rioInitWithFile (int *,int *) ;
 int rioSetAutoSync (int *,int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int startSaving (int ) ;
 int stopSaving (int) ;
 int strerror (int) ;
 int time (int *) ;
 int unlink (char*) ;

int rdbSave(char *filename, rdbSaveInfo *rsi) {
    char tmpfile[256];
    char cwd[MAXPATHLEN];
    FILE *fp;
    rio rdb;
    int error = 0;

    snprintf(tmpfile,256,"temp-%d.rdb", (int) getpid());
    fp = fopen(tmpfile,"w");
    if (!fp) {
        char *cwdp = getcwd(cwd,MAXPATHLEN);
        serverLog(LL_WARNING,
            "Failed opening the RDB file %s (in server root dir %s) "
            "for saving: %s",
            filename,
            cwdp ? cwdp : "unknown",
            strerror(errno));
        return C_ERR;
    }

    rioInitWithFile(&rdb,fp);
    startSaving(RDBFLAGS_NONE);

    if (server.rdb_save_incremental_fsync)
        rioSetAutoSync(&rdb,REDIS_AUTOSYNC_BYTES);

    if (rdbSaveRio(&rdb,&error,RDBFLAGS_NONE,rsi) == C_ERR) {
        errno = error;
        goto werr;
    }


    if (fflush(fp) == EOF) goto werr;
    if (fsync(fileno(fp)) == -1) goto werr;
    if (fclose(fp) == EOF) goto werr;



    if (rename(tmpfile,filename) == -1) {
        char *cwdp = getcwd(cwd,MAXPATHLEN);
        serverLog(LL_WARNING,
            "Error moving temp DB file %s on the final "
            "destination %s (in server root dir %s): %s",
            tmpfile,
            filename,
            cwdp ? cwdp : "unknown",
            strerror(errno));
        unlink(tmpfile);
        stopSaving(0);
        return C_ERR;
    }

    serverLog(LL_NOTICE,"DB saved on disk");
    server.dirty = 0;
    server.lastsave = time(((void*)0));
    server.lastbgsave_status = C_OK;
    stopSaving(1);
    return C_OK;

werr:
    serverLog(LL_WARNING,"Write error saving DB on disk: %s", strerror(errno));
    fclose(fp);
    unlink(tmpfile);
    stopSaving(0);
    return C_ERR;
}
