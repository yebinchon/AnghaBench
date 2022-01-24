#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/ * z; } ;
struct TYPE_6__ {int iBuf; int iCksumBuf; scalar_t__ cksum0; scalar_t__ cksum1; TYPE_1__ buf; } ;
typedef  int /*<<< orphan*/  LsmString ;
typedef  TYPE_2__ LogReader ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(LogReader *p, LsmString *pBuf, int *pbEof, int *pRc){
  if( *pRc==LSM_OK ){
    u8 *pPtr = 0;
    u32 cksum0, cksum1;
    int nCksum = p->iBuf - p->iCksumBuf;

    /* Update in-memory (expected) checksums */
    FUNC0( nCksum>=0 );
    FUNC1(&p->buf.z[p->iCksumBuf], nCksum, &p->cksum0, &p->cksum1);
    p->iCksumBuf = p->iBuf + 8;
    FUNC2(p, pBuf, 8, &pPtr, pRc);
    FUNC0( pPtr || *pRc );

    /* Read the checksums from the log file. Set *pbEof if they do not match. */
    if( pPtr ){
      cksum0 = FUNC3(pPtr);
      cksum1 = FUNC3(&pPtr[4]);
      *pbEof = (cksum0!=p->cksum0 || cksum1!=p->cksum1);
      p->iCksumBuf = p->iBuf;
    }
  }
}