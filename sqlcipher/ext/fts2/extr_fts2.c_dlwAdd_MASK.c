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
typedef  scalar_t__ sqlite_int64 ;
struct TYPE_3__ {scalar_t__ iPrevDocid; int has_iPrevDocid; scalar_t__ iType; int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ DLWriter ;

/* Variables and functions */
 scalar_t__ DL_DOCIDS ; 
 int VARINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(DLWriter *pWriter, sqlite_int64 iDocid){
  char c[VARINT_MAX];
  int n = FUNC2(c, iDocid-pWriter->iPrevDocid);

  /* Docids must ascend. */
  FUNC0( !pWriter->has_iPrevDocid || iDocid>pWriter->iPrevDocid );
  FUNC0( pWriter->iType==DL_DOCIDS );

  FUNC1(pWriter->b, c, n);
  pWriter->iPrevDocid = iDocid;
#ifndef NDEBUG
  pWriter->has_iPrevDocid = 1;
#endif
}