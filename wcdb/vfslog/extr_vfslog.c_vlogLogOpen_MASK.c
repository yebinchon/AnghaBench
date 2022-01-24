#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_mutex ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int nFilename; char* zFilename; int lastReadOfs; int lastWriteOfs; int /*<<< orphan*/  nRef; struct TYPE_7__* pNext; struct TYPE_7__** ppPrev; void* gzMutex; scalar_t__ gzOut; scalar_t__ tmpOut; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ VLogLog ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SQLITE_MUTEX_FAST ; 
 int /*<<< orphan*/  SQLITE_MUTEX_STATIC_MASTER ; 
 TYPE_1__* allLogs ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int,int,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,char*,int,char const*) ; 
 scalar_t__ FUNC17 (char*,char const*) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  vlogDefaultLogFlags ; 

__attribute__((used)) static VLogLog *FUNC20(const char *zFilename)
{
    int nName = (int) FUNC19(zFilename);
    int fileType = 0;
    sqlite3_mutex *pMutex;
    VLogLog *pLog, *pTemp;
    if (nName > 4 && FUNC18(zFilename + nName - 4, "-wal") == 0) {
        nName -= 4;
        fileType = 1; /* wal */
    }

    if (nName > 8 && FUNC18(zFilename + nName - 8, "-journal") == 0) {
        nName -= 8;
        fileType = 1; /* journal */
    } else if (nName > 12 &&
               FUNC17("-mj??????9??", zFilename + nName - 12) == 0) {
        return 0; /* Do not log master journal files */
    }

    pTemp = FUNC11(sizeof(*pLog) * 2 + nName + 60);
    if (pTemp == 0)
        return 0;
    pMutex = FUNC12(SQLITE_MUTEX_STATIC_MASTER);
    FUNC13(pMutex);
    for (pLog = allLogs; pLog; pLog = pLog->pNext) {
        if (pLog->nFilename == nName &&
            !FUNC8(pLog->zFilename, zFilename, nName)) {
            break;
        }
    }

    if (pLog == 0) {
        pLog = pTemp;
        pTemp = 0;
        FUNC9(pLog, 0, sizeof(*pLog) * 2);
        pLog->zFilename = (char *) &pLog[2];
        FUNC16(nName + 60, pLog->zFilename, "%.*s-vfslog", nName,
                         zFilename);

        char *tmpName = FUNC0(nName + 60);
        FUNC16(nName + 60, tmpName, "%.*s-vfslo1", nName, zFilename);

        pLog->tmpOut = FUNC2(tmpName, "ab+");
        pLog->gzOut = FUNC6(pLog->zFilename, "ab");
        pLog->gzMutex = FUNC12(SQLITE_MUTEX_FAST);
        if (!pLog->tmpOut || !pLog->gzOut || !pLog->gzMutex) {
            if (pLog->tmpOut)
                FUNC1(pLog->tmpOut);
            if (pLog->gzOut)
                FUNC5(pLog->gzOut);
            if (pLog->gzMutex)
                FUNC14(pLog->gzMutex);

            FUNC15(pMutex);
            FUNC10(pLog);
            return 0;
        }

        /* Flush existing content in tmpOut to gzOut */
        if (FUNC4(pLog->tmpOut, 0, SEEK_END) > 0) {
            FUNC4(pLog->tmpOut, 0, SEEK_SET);
            char buf[1024];
            int ret;
            while ((ret = FUNC3(buf, 1, sizeof(buf), pLog->tmpOut)) >= 0) {
                FUNC7(pLog->gzOut, buf, ret);
            }
            FUNC4(pLog->tmpOut, 0, SEEK_END);
        }

        pLog->nFilename = nName;
        pLog->flags = vlogDefaultLogFlags;
        pLog[1].tmpOut = pLog[0].tmpOut;
        pLog[1].gzOut = pLog[0].gzOut;
        pLog[1].gzMutex = pLog[0].gzMutex;
        pLog->ppPrev = &allLogs;
        if (allLogs)
            allLogs->ppPrev = &pLog->pNext;
        pLog->pNext = allLogs;
        allLogs = pLog;
    }
    FUNC15(pMutex);
    if (pTemp) {
        FUNC10(pTemp);
    }
    if (pLog)
        pLog += fileType;
    pLog->nRef++;

    pLog->lastReadOfs = -1;
    pLog->lastWriteOfs = -1;
    return pLog;
}