#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_8__ {scalar_t__ iType; } ;
typedef  int /*<<< orphan*/  DocListReader ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(DocList *in, int iRestrictColumn){
  DocListReader r;
  DocList out;

  FUNC0( in->iType>=DL_POSITIONS );
  FUNC8(&r, in);
  FUNC5(&out, DL_POSITIONS, NULL, 0);

  while( !FUNC1(&r) ){
    sqlite_int64 iDocid = FUNC6(&r);
    int iPos, iColumn;

    FUNC2(&out, iDocid);
    while( (iPos = FUNC7(&r, &iColumn)) != -1 ){
      if( iColumn==iRestrictColumn ){
        FUNC3(&out, iColumn, iPos);
      }
    }
  }

  FUNC4(in);
  *in = out;
}