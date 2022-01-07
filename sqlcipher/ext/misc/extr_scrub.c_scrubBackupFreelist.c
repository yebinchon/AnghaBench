
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int szUsable; int szPage; scalar_t__ rcErr; } ;
typedef TYPE_1__ ScrubState ;


 int * aZero ;
 int i ;
 int memset (int *,int ,int) ;
 int * scrubBackupAllocPage (TYPE_1__*) ;
 int scrubBackupInt32 (int *) ;
 int * scrubBackupRead (TYPE_1__*,int,int *) ;
 int scrubBackupWrite (TYPE_1__*,int,int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void scrubBackupFreelist(ScrubState *p, int pgno, u32 nFree){
  u8 *a, *aBuf;
  u32 n, mx;

  if( p->rcErr ) return;
  aBuf = scrubBackupAllocPage(p);
  if( aBuf==0 ) return;

  while( pgno && nFree){
    a = scrubBackupRead(p, pgno, aBuf);
    if( a==0 ) break;
    n = scrubBackupInt32(&a[4]);
    mx = p->szUsable/4 - 2;
    if( n<mx ){
      memset(&a[n*4+8], 0, 4*(mx-n));
    }
    scrubBackupWrite(p, pgno, a);
    pgno = scrubBackupInt32(a);
  }
  sqlite3_free(aBuf);
}
