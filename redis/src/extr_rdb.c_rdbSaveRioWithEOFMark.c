
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rio ;
typedef int rdbSaveInfo ;


 scalar_t__ C_ERR ;
 int C_OK ;
 int RDBFLAGS_NONE ;
 int RDBFLAGS_REPLICATION ;
 int RDB_EOF_MARK_SIZE ;
 int errno ;
 int getRandomHexChars (char*,int) ;
 scalar_t__ rdbSaveRio (int *,int*,int ,int *) ;
 scalar_t__ rioWrite (int *,char*,int) ;
 int startSaving (int ) ;
 int stopSaving (int) ;

int rdbSaveRioWithEOFMark(rio *rdb, int *error, rdbSaveInfo *rsi) {
    char eofmark[RDB_EOF_MARK_SIZE];

    startSaving(RDBFLAGS_REPLICATION);
    getRandomHexChars(eofmark,RDB_EOF_MARK_SIZE);
    if (error) *error = 0;
    if (rioWrite(rdb,"$EOF:",5) == 0) goto werr;
    if (rioWrite(rdb,eofmark,RDB_EOF_MARK_SIZE) == 0) goto werr;
    if (rioWrite(rdb,"\r\n",2) == 0) goto werr;
    if (rdbSaveRio(rdb,error,RDBFLAGS_NONE,rsi) == C_ERR) goto werr;
    if (rioWrite(rdb,eofmark,RDB_EOF_MARK_SIZE) == 0) goto werr;
    stopSaving(1);
    return C_OK;

werr:

    if (error && *error == 0) *error = errno;
    stopSaving(0);
    return C_ERR;
}
