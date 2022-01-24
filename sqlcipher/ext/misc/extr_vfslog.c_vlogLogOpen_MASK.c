#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zHost ;
typedef  int /*<<< orphan*/  sqlite3_mutex ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_8__ {int nFilename; char* zFilename; scalar_t__ out; int /*<<< orphan*/  nRef; struct TYPE_8__* pNext; struct TYPE_8__** ppPrev; } ;
typedef  TYPE_1__ VLogLog ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MUTEX_STATIC_MASTER ; 
 TYPE_1__* allLogs ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char*,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static VLogLog *FUNC16(const char *zFilename){
  int nName = (int)FUNC13(zFilename);
  int isJournal = 0;
  sqlite3_mutex *pMutex;
  VLogLog *pLog, *pTemp;
  sqlite3_int64 tNow = 0;
  if( nName>4 && FUNC12(zFilename+nName-4,"-wal")==0 ){
    return 0;  /* Do not log wal files */
  }else
  if( nName>8 && FUNC12(zFilename+nName-8,"-journal")==0 ){
    nName -= 8;
    isJournal = 1;
  }else if( nName>12 
         && FUNC11("-mj??????9??", zFilename+nName-12)==0 ){
    return 0;  /* Do not log master journal files */
  }
  pTemp = FUNC6( sizeof(*pLog)*2 + nName + 60 );
  if( pTemp==0 ) return 0;
  pMutex = FUNC7(SQLITE_MUTEX_STATIC_MASTER);
  FUNC8(pMutex);
  for(pLog=allLogs; pLog; pLog=pLog->pNext){
    if( pLog->nFilename==nName && !FUNC3(pLog->zFilename, zFilename, nName) ){
      break;
    }
  }
  if( pLog==0 ){
    pLog = pTemp;
    pTemp = 0;
    FUNC4(pLog, 0, sizeof(*pLog)*2);
    pLog->zFilename = (char*)&pLog[2];
    tNow = FUNC15();
    FUNC10(nName+60, pLog->zFilename, "%.*s-debuglog-%lld",
                     nName, zFilename, tNow);
    pLog->out = FUNC0(pLog->zFilename, "a");
    if( pLog->out==0 ){
      FUNC9(pMutex);
      FUNC5(pLog);
      return 0;
    }
    pLog->nFilename = nName;
    pLog[1].out = pLog[0].out;
    pLog->ppPrev = &allLogs;
    if( allLogs ) allLogs->ppPrev = &pLog->pNext;
    pLog->pNext = allLogs;
    allLogs = pLog;
  }
  FUNC9(pMutex);
  if( pTemp ){
    FUNC5(pTemp);
  }else{
#if SQLITE_OS_UNIX
    char zHost[200];
    zHost[0] = 0;
    gethostname(zHost, sizeof(zHost)-1);
    zHost[sizeof(zHost)-1] = 0;
    vlogLogPrint(pLog, tNow, 0, "IDENT", getpid(), -1, zHost, 0);
#endif
  }
  if( pLog && isJournal ) pLog++;
  pLog->nRef++;
  return pLog;
}