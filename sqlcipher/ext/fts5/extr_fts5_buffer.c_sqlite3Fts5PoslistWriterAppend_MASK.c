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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_3__ {int /*<<< orphan*/  iPrev; } ;
typedef  TYPE_1__ Fts5PoslistWriter ;
typedef  int /*<<< orphan*/  Fts5Buffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(
  Fts5Buffer *pBuf, 
  Fts5PoslistWriter *pWriter,
  i64 iPos
){
  int rc = 0;   /* Initialized only to suppress erroneous warning from Clang */
  if( FUNC0(&rc, pBuf, 5+5+5) ) return rc;
  FUNC1(pBuf, &pWriter->iPrev, iPos);
  return SQLITE_OK;
}