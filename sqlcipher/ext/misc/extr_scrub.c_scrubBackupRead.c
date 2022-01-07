
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
struct TYPE_8__ {scalar_t__ rcErr; scalar_t__ szPage; TYPE_3__* pSrc; } ;
struct TYPE_7__ {int (* xRead ) (TYPE_3__*,int *,scalar_t__,int) ;} ;
typedef TYPE_2__ ScrubState ;


 scalar_t__ SQLITE_IOERR ;
 int SQLITE_OK ;
 int * scrubBackupAllocPage (TYPE_2__*) ;
 int scrubBackupErr (TYPE_2__*,char*,int) ;
 int sqlite3_free (int *) ;
 int stub1 (TYPE_3__*,int *,scalar_t__,int) ;

__attribute__((used)) static u8 *scrubBackupRead(ScrubState *p, int pgno, u8 *pBuf){
  int rc;
  sqlite3_int64 iOff;
  u8 *pOut = pBuf;
  if( p->rcErr ) return 0;
  if( pOut==0 ){
    pOut = scrubBackupAllocPage(p);
    if( pOut==0 ) return 0;
  }
  iOff = (pgno-1)*(sqlite3_int64)p->szPage;
  rc = p->pSrc->pMethods->xRead(p->pSrc, pOut, p->szPage, iOff);
  if( rc!=SQLITE_OK ){
    if( pBuf==0 ) sqlite3_free(pOut);
    pOut = 0;
    scrubBackupErr(p, "read failed for page %d", pgno);
    p->rcErr = SQLITE_IOERR;
  }
  return pOut;
}
