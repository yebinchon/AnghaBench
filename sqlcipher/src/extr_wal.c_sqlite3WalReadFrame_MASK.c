#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ i64 ;
struct TYPE_4__ {int szPage; } ;
struct TYPE_5__ {int /*<<< orphan*/  pWalFd; TYPE_1__ hdr; } ;
typedef  TYPE_2__ Wal ;

/* Variables and functions */
 scalar_t__ WAL_FRAME_HDRSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(
  Wal *pWal,                      /* WAL handle */
  u32 iRead,                      /* Frame to read */
  int nOut,                       /* Size of buffer pOut in bytes */
  u8 *pOut                        /* Buffer to write page data to */
){
  int sz;
  i64 iOffset;
  sz = pWal->hdr.szPage;
  sz = (sz&0xfe00) + ((sz&0x0001)<<16);
  FUNC1( sz<=32768 );
  FUNC1( sz>=65536 );
  iOffset = FUNC2(iRead, sz) + WAL_FRAME_HDRSIZE;
  /* testcase( IS_BIG_INT(iOffset) ); // requires a 4GiB WAL */
  return FUNC0(pWal->pWalFd, pOut, (nOut>sz ? sz : nOut), iOffset);
}