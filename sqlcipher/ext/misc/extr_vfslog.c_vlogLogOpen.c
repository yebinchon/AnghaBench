
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int zHost ;
typedef int sqlite3_mutex ;
typedef int sqlite3_int64 ;
struct TYPE_8__ {int nFilename; char* zFilename; scalar_t__ out; int nRef; struct TYPE_8__* pNext; struct TYPE_8__** ppPrev; } ;
typedef TYPE_1__ VLogLog ;


 int SQLITE_MUTEX_STATIC_MASTER ;
 TYPE_1__* allLogs ;
 scalar_t__ fopen (char*,char*) ;
 int gethostname (char*,int) ;
 int getpid () ;
 int memcmp (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (TYPE_1__*) ;
 TYPE_1__* sqlite3_malloc64 (int) ;
 int * sqlite3_mutex_alloc (int ) ;
 int sqlite3_mutex_enter (int *) ;
 int sqlite3_mutex_leave (int *) ;
 int sqlite3_snprintf (int,char*,char*,int,char const*,int ) ;
 scalar_t__ sqlite3_strglob (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 int vlogLogPrint (TYPE_1__*,int ,int ,char*,int ,int,char*,int ) ;
 int vlog_time () ;

__attribute__((used)) static VLogLog *vlogLogOpen(const char *zFilename){
  int nName = (int)strlen(zFilename);
  int isJournal = 0;
  sqlite3_mutex *pMutex;
  VLogLog *pLog, *pTemp;
  sqlite3_int64 tNow = 0;
  if( nName>4 && strcmp(zFilename+nName-4,"-wal")==0 ){
    return 0;
  }else
  if( nName>8 && strcmp(zFilename+nName-8,"-journal")==0 ){
    nName -= 8;
    isJournal = 1;
  }else if( nName>12
         && sqlite3_strglob("-mj??????9??", zFilename+nName-12)==0 ){
    return 0;
  }
  pTemp = sqlite3_malloc64( sizeof(*pLog)*2 + nName + 60 );
  if( pTemp==0 ) return 0;
  pMutex = sqlite3_mutex_alloc(SQLITE_MUTEX_STATIC_MASTER);
  sqlite3_mutex_enter(pMutex);
  for(pLog=allLogs; pLog; pLog=pLog->pNext){
    if( pLog->nFilename==nName && !memcmp(pLog->zFilename, zFilename, nName) ){
      break;
    }
  }
  if( pLog==0 ){
    pLog = pTemp;
    pTemp = 0;
    memset(pLog, 0, sizeof(*pLog)*2);
    pLog->zFilename = (char*)&pLog[2];
    tNow = vlog_time();
    sqlite3_snprintf(nName+60, pLog->zFilename, "%.*s-debuglog-%lld",
                     nName, zFilename, tNow);
    pLog->out = fopen(pLog->zFilename, "a");
    if( pLog->out==0 ){
      sqlite3_mutex_leave(pMutex);
      sqlite3_free(pLog);
      return 0;
    }
    pLog->nFilename = nName;
    pLog[1].out = pLog[0].out;
    pLog->ppPrev = &allLogs;
    if( allLogs ) allLogs->ppPrev = &pLog->pNext;
    pLog->pNext = allLogs;
    allLogs = pLog;
  }
  sqlite3_mutex_leave(pMutex);
  if( pTemp ){
    sqlite3_free(pTemp);
  }else{







  }
  if( pLog && isJournal ) pLog++;
  pLog->nRef++;
  return pLog;
}
