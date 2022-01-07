
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int z3 ;
typedef int z2 ;
typedef int z1 ;
typedef int sqlite3_int64 ;
typedef int buf ;
typedef int VLogOp ;
struct TYPE_3__ {int flags; scalar_t__ zFilename; int gzMutex; int tmpOut; int gzOut; } ;
typedef TYPE_1__ VLogLog ;


 int SEEK_SET ;
 scalar_t__ VFSLOG_GZIP_BLOCK_SIZE ;
 int * VLOG_OPNAME ;
 int Z_FINISH ;
 int fflush (int ) ;
 int fileno (int ) ;
 int fseek (int ,int ,int ) ;
 scalar_t__ ftell (int ) ;
 int ftruncate (int ,int ) ;
 int fwrite (char*,int,int,int ) ;
 int gzflush (int ,int ) ;
 int gzwrite (int ,char*,int) ;
 int snprintf (char*,int,char*,int ,int ,int ,int,char*,char*,char*,int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int sqlite3_snprintf (int,char*,char*,int,...) ;

__attribute__((used)) static void vlogLogPrint(VLogLog *pLog,
                         sqlite3_int64 tStart,
                         sqlite3_int64 tElapse,
                         VLogOp iOp,
                         sqlite3_int64 iArg1,
                         sqlite3_int64 iArg2,
                         const char *zArg3,
                         int iRes
                         )
{
    if (!pLog || (pLog->flags & (1 << iOp)) == 0)
        return;

    char z1[40], z2[40], z3[1024];
    if (iArg1 >= 0) {
        sqlite3_snprintf(sizeof(z1), z1, "%lld", iArg1);
    } else {
        z1[0] = 0;
    }
    if (iArg2 >= 0) {
        sqlite3_snprintf(sizeof(z2), z2, "%lld", iArg2);
    } else {
        z2[0] = 0;
    }
    if (zArg3) {
        sqlite3_snprintf(sizeof(z3), z3, "\"%.*w\"", sizeof(z3) - 4, zArg3);
    } else {
        z3[0] = 0;
    }

    char buf[2048];
    int len = snprintf(buf, sizeof(buf), "%lld,%lld,%s,%d,%s,%s,%s,%d\n",
                       tStart, tElapse, VLOG_OPNAME[iOp], pLog->zFilename == 0,
                       z1, z2, z3, iRes);

    sqlite3_mutex_enter(pLog->gzMutex);
    fwrite(buf, 1, len, pLog->tmpOut);
    fflush(pLog->tmpOut);
    gzwrite(pLog->gzOut, buf, len);
    if (ftell(pLog->tmpOut) >= VFSLOG_GZIP_BLOCK_SIZE) {
        gzflush(pLog->gzOut, Z_FINISH);
        fseek(pLog->tmpOut, 0, SEEK_SET);
        ftruncate(fileno(pLog->tmpOut), 0);
    }
    sqlite3_mutex_leave(pLog->gzMutex);
}
