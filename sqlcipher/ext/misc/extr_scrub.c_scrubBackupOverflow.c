
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int szUsable; } ;
typedef TYPE_1__ ScrubState ;


 int memset (int *,int ,scalar_t__) ;
 int * scrubBackupAllocPage (TYPE_1__*) ;
 int scrubBackupInt32 (int *) ;
 int * scrubBackupRead (TYPE_1__*,int,int *) ;
 int scrubBackupWrite (TYPE_1__*,int,int *) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static void scrubBackupOverflow(ScrubState *p, int pgno, u32 nByte){
  u8 *a, *aBuf;

  aBuf = scrubBackupAllocPage(p);
  if( aBuf==0 ) return;
  while( nByte>0 && pgno!=0 ){
    a = scrubBackupRead(p, pgno, aBuf);
    if( a==0 ) break;
    if( nByte >= (p->szUsable)-4 ){
      nByte -= (p->szUsable) - 4;
    }else{
      u32 x = (p->szUsable - 4) - nByte;
      u32 i = p->szUsable - x;
      memset(&a[i], 0, x);
      nByte = 0;
    }
    scrubBackupWrite(p, pgno, a);
    pgno = scrubBackupInt32(a);
  }
  sqlite3_free(aBuf);
}
