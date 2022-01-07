
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zStr ;
typedef int sqlite_int64 ;
typedef scalar_t__ sqlite3_uint64 ;
typedef int sqlite3_file ;
struct TYPE_6__ {TYPE_3__* pLog; TYPE_4__* pReal; } ;
typedef TYPE_2__ VLogFile ;
struct TYPE_8__ {TYPE_1__* pMethods; } ;
struct TYPE_7__ {int lastReadOfs; int gzMutex; scalar_t__ zFilename; } ;
struct TYPE_5__ {int (* xRead ) (TYPE_4__*,void*,int,int) ;} ;


 int SQLITE_OK ;
 int VLOG_OP_CHNGCTR_READ ;
 int VLOG_OP_READ ;
 unsigned int bigToNative (unsigned char*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int sqlite3_snprintf (int,char*,char*,unsigned int) ;
 int stub1 (TYPE_4__*,void*,int,int) ;
 int vlogLogPrint (TYPE_3__*,scalar_t__,scalar_t__,int ,int,int,char*,int) ;
 int vlogSignature (void*,int,char*) ;
 scalar_t__ vlog_time () ;

__attribute__((used)) static int
vlogRead(sqlite3_file *pFile, void *zBuf, int iAmt, sqlite_int64 iOfst)
{
    int rc;
    sqlite3_uint64 tStart, tElapse;
    VLogFile *p = (VLogFile *) pFile;

    tStart = vlog_time();
    rc = p->pReal->pMethods->xRead(p->pReal, zBuf, iAmt, iOfst);
    tElapse = vlog_time() - tStart;

    if (rc == SQLITE_OK && p->pLog && p->pLog->zFilename && iOfst <= 24 &&
        iOfst + iAmt >= 28) {

        unsigned char *x = ((unsigned char *) zBuf) + (24 - iOfst);
        unsigned iCtr, nFree = -1;
        char *zFree = 0;
        char zStr[12];
        iCtr = bigToNative(x);
        if (iOfst + iAmt >= 40) {
            zFree = zStr;
            sqlite3_snprintf(sizeof(zStr), zStr, "%d", bigToNative(x + 8));
            nFree = bigToNative(x + 12);
        }


        vlogLogPrint(p->pLog, tStart, tElapse, VLOG_OP_CHNGCTR_READ, iCtr,
                     nFree, zFree, 0);
    } else {
        char zSig[40];
        if (rc == SQLITE_OK) {
            vlogSignature(zBuf, iAmt, zSig);
        } else {
            zSig[0] = 0;
        }


        sqlite3_mutex_enter(p->pLog->gzMutex);
        p->pLog->lastReadOfs = iOfst;
        sqlite3_mutex_leave(p->pLog->gzMutex);

        vlogLogPrint(p->pLog, tStart, tElapse, VLOG_OP_READ, iAmt, iOfst, zSig,
                     rc);
    }
    return rc;
}
