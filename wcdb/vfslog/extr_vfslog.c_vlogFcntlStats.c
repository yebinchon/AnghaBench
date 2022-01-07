
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lastJournalWriteOffset; int lastJournalReadOffset; int lastMainWriteOffset; int lastMainReadOffset; } ;
typedef TYPE_1__ VLogStat ;
struct TYPE_7__ {scalar_t__ nFilename; int gzMutex; int lastWriteOfs; int lastReadOfs; } ;
typedef TYPE_2__ VLogLog ;
struct TYPE_8__ {TYPE_2__* pLog; } ;
typedef TYPE_3__ VLogFile ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static int vlogFcntlStats(VLogFile *p, VLogStat *stats)
{
    VLogLog *pLog = p->pLog;


    if (p->pLog->nFilename == 0)
        return SQLITE_ERROR;

    sqlite3_mutex_enter(pLog->gzMutex);
    stats->lastMainReadOffset = pLog->lastReadOfs;
    stats->lastMainWriteOffset = pLog->lastWriteOfs;


    pLog++;
    stats->lastJournalReadOffset = pLog->lastReadOfs;
    stats->lastJournalWriteOffset = pLog->lastWriteOfs;
    sqlite3_mutex_leave(pLog->gzMutex);

    return SQLITE_OK;
}
