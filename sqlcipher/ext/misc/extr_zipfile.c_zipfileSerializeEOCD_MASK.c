#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  iOffset; int /*<<< orphan*/  nSize; int /*<<< orphan*/  nEntryTotal; int /*<<< orphan*/  nEntry; int /*<<< orphan*/  iFirstDisk; int /*<<< orphan*/  iDisk; } ;
typedef  TYPE_1__ ZipfileEOCD ;

/* Variables and functions */
 int /*<<< orphan*/  ZIPFILE_SIGNATURE_EOCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ZipfileEOCD *p, u8 *aBuf){
  u8 *a = aBuf;
  FUNC1(a, ZIPFILE_SIGNATURE_EOCD);
  FUNC0(a, p->iDisk);
  FUNC0(a, p->iFirstDisk);
  FUNC0(a, p->nEntry);
  FUNC0(a, p->nEntryTotal);
  FUNC1(a, p->nSize);
  FUNC1(a, p->iOffset);
  FUNC0(a, 0);        /* Size of trailing comment in bytes*/

  return a-aBuf;
}