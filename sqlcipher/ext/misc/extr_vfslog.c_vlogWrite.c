
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
struct TYPE_7__ {scalar_t__ zFilename; } ;
struct TYPE_5__ {int (* xWrite ) (TYPE_4__*,void const*,int,int) ;} ;


 int SQLITE_OK ;
 unsigned int bigToNative (unsigned char*) ;
 int sqlite3_snprintf (int,char*,char*,unsigned int) ;
 int stub1 (TYPE_4__*,void const*,int,int) ;
 int vlogLogPrint (TYPE_3__*,scalar_t__,scalar_t__,char*,unsigned int,unsigned int,char*,int) ;
 int vlogSignature (unsigned char*,int,char*) ;
 scalar_t__ vlog_time () ;

__attribute__((used)) static int vlogWrite(
  sqlite3_file *pFile,
  const void *z,
  int iAmt,
  sqlite_int64 iOfst
){
  int rc;
  sqlite3_uint64 tStart, tElapse;
  VLogFile *p = (VLogFile *)pFile;
  char zSig[40];

  tStart = vlog_time();
  vlogSignature((unsigned char*)z, iAmt, zSig);
  rc = p->pReal->pMethods->xWrite(p->pReal, z, iAmt, iOfst);
  tElapse = vlog_time() - tStart;
  vlogLogPrint(p->pLog, tStart, tElapse, "WRITE", iAmt, iOfst, zSig, rc);
  if( rc==SQLITE_OK
   && p->pLog
   && p->pLog->zFilename
   && iOfst<=24
   && iOfst+iAmt>=28
  ){
    unsigned char *x = ((unsigned char*)z)+(24-iOfst);
    unsigned iCtr, nFree = -1;
    char *zFree = 0;
    char zStr[12];
    iCtr = bigToNative(x);
    if( iOfst+iAmt>=40 ){
      zFree = zStr;
      sqlite3_snprintf(sizeof(zStr), zStr, "%d", bigToNative(x+8));
      nFree = bigToNative(x+12);
    }
    vlogLogPrint(p->pLog, tStart, 0, "CHNGCTR-WRITE", iCtr, nFree, zFree, 0);
  }
  return rc;
}
