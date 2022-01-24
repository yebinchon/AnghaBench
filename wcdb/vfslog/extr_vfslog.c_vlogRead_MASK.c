#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zStr ;
typedef  int sqlite_int64 ;
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_file ;
struct TYPE_6__ {TYPE_3__* pLog; TYPE_4__* pReal; } ;
typedef  TYPE_2__ VLogFile ;
struct TYPE_8__ {TYPE_1__* pMethods; } ;
struct TYPE_7__ {int lastReadOfs; int /*<<< orphan*/  gzMutex; scalar_t__ zFilename; } ;
struct TYPE_5__ {int (* xRead ) (TYPE_4__*,void*,int,int) ;} ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  VLOG_OP_CHNGCTR_READ ; 
 int /*<<< orphan*/  VLOG_OP_READ ; 
 unsigned int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,unsigned int) ; 
 int FUNC4 (TYPE_4__*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,char*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int
FUNC8(sqlite3_file *pFile, void *zBuf, int iAmt, sqlite_int64 iOfst)
{
    int rc;
    sqlite3_uint64 tStart, tElapse;
    VLogFile *p = (VLogFile *) pFile;

    tStart = FUNC7();
    rc = p->pReal->pMethods->xRead(p->pReal, zBuf, iAmt, iOfst);
    tElapse = FUNC7() - tStart;

    if (rc == SQLITE_OK && p->pLog && p->pLog->zFilename && iOfst <= 24 &&
        iOfst + iAmt >= 28) {

        unsigned char *x = ((unsigned char *) zBuf) + (24 - iOfst);
        unsigned iCtr, nFree = -1;
        char *zFree = 0;
        char zStr[12];
        iCtr = FUNC0(x);
        if (iOfst + iAmt >= 40) {
            zFree = zStr;
            FUNC3(sizeof(zStr), zStr, "%d", FUNC0(x + 8));
            nFree = FUNC0(x + 12);
        }

        /* XXX: Values are meaningful only for plain-text databases */
        FUNC5(p->pLog, tStart, tElapse, VLOG_OP_CHNGCTR_READ, iCtr,
                     nFree, zFree, 0);
    } else {
        char zSig[40];
        if (rc == SQLITE_OK) {
            FUNC6(zBuf, iAmt, zSig);
        } else {
            zSig[0] = 0;
        }

        /* Record last read position */
        FUNC1(p->pLog->gzMutex);
        p->pLog->lastReadOfs = iOfst;
        FUNC2(p->pLog->gzMutex);

        FUNC5(p->pLog, tStart, tElapse, VLOG_OP_READ, iAmt, iOfst, zSig,
                     rc);
    }
    return rc;
}