
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int szUsable; int szPage; scalar_t__ nPage; scalar_t__ rcErr; } ;
typedef TYPE_1__ ScrubState ;


 int * scrubBackupAllocPage (TYPE_1__*) ;
 int * scrubBackupRead (TYPE_1__*,scalar_t__,int *) ;
 int scrubBackupWrite (TYPE_1__*,scalar_t__,int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void scrubBackupPtrmap(ScrubState *p){
  u32 pgno = 2;
  u32 J = p->szUsable/5;
  u32 iLock = (1073742335/p->szPage)+1;
  u8 *a, *pBuf;
  if( p->rcErr ) return;
  pBuf = scrubBackupAllocPage(p);
  if( pBuf==0 ) return;
  while( pgno<=p->nPage ){
    a = scrubBackupRead(p, pgno, pBuf);
    if( a==0 ) break;
    scrubBackupWrite(p, pgno, a);
    pgno += J+1;
    if( pgno==iLock ) pgno++;
  }
  sqlite3_free(pBuf);
}
