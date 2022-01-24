#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_2__ {scalar_t__ iCutoffTime; scalar_t__ iLastCb; scalar_t__ mxInterval; int /*<<< orphan*/  nCb; } ;
typedef  TYPE_1__ FuzzCtx ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static int FUNC1(void *pClientData) {
  FuzzCtx *p = (FuzzCtx*)pClientData;
  sqlite3_int64 iNow = FUNC0();
  int rc = iNow>=p->iCutoffTime;
  sqlite3_int64 iDiff = iNow - p->iLastCb;
  if( iDiff > p->mxInterval ) p->mxInterval = iDiff;
  p->nCb++;
  return rc;
}