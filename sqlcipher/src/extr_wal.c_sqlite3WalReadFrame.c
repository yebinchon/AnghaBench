
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ i64 ;
struct TYPE_4__ {int szPage; } ;
struct TYPE_5__ {int pWalFd; TYPE_1__ hdr; } ;
typedef TYPE_2__ Wal ;


 scalar_t__ WAL_FRAME_HDRSIZE ;
 int sqlite3OsRead (int ,int *,int,scalar_t__) ;
 int testcase (int) ;
 scalar_t__ walFrameOffset (int ,int) ;

int sqlite3WalReadFrame(
  Wal *pWal,
  u32 iRead,
  int nOut,
  u8 *pOut
){
  int sz;
  i64 iOffset;
  sz = pWal->hdr.szPage;
  sz = (sz&0xfe00) + ((sz&0x0001)<<16);
  testcase( sz<=32768 );
  testcase( sz>=65536 );
  iOffset = walFrameOffset(iRead, sz) + WAL_FRAME_HDRSIZE;

  return sqlite3OsRead(pWal->pWalFd, pOut, (nOut>sz ? sz : nOut), iOffset);
}
