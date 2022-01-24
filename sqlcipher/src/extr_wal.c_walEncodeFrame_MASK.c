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
struct TYPE_4__ {scalar_t__ bigEndCksum; int /*<<< orphan*/  aSalt; int /*<<< orphan*/ * aFrameCksum; } ;
struct TYPE_5__ {scalar_t__ iReCksum; int szPage; TYPE_1__ hdr; } ;
typedef  TYPE_2__ Wal ;

/* Variables and functions */
 scalar_t__ SQLITE_BIGENDIAN ; 
 int WAL_FRAME_HDRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  Wal *pWal,                      /* The write-ahead log */
  u32 iPage,                      /* Database page number for frame */
  u32 nTruncate,                  /* New db size (or 0 for non-commit frames) */
  u8 *aData,                      /* Pointer to page data */
  u8 *aFrame                      /* OUT: Write encoded frame here */
){
  int nativeCksum;                /* True for native byte-order checksums */
  u32 *aCksum = pWal->hdr.aFrameCksum;
  FUNC0( WAL_FRAME_HDRSIZE==24 );
  FUNC3(&aFrame[0], iPage);
  FUNC3(&aFrame[4], nTruncate);
  if( pWal->iReCksum==0 ){
    FUNC1(&aFrame[8], pWal->hdr.aSalt, 8);

    nativeCksum = (pWal->hdr.bigEndCksum==SQLITE_BIGENDIAN);
    FUNC4(nativeCksum, aFrame, 8, aCksum, aCksum);
    FUNC4(nativeCksum, aData, pWal->szPage, aCksum, aCksum);

    FUNC3(&aFrame[16], aCksum[0]);
    FUNC3(&aFrame[20], aCksum[1]);
  }else{
    FUNC2(&aFrame[8], 0, 16);
  }
}