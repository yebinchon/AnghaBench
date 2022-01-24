#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  scalar_t__ BinOpr ;

/* Variables and functions */
 scalar_t__ OPR_AND ; 
 scalar_t__ OPR_CONCAT ; 
 scalar_t__ OPR_EQ ; 
 scalar_t__ OPR_NE ; 
 scalar_t__ OPR_OR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(FuncState *fs, BinOpr op, ExpDesc *e)
{
  if (op == OPR_AND) {
    FUNC1(fs, e);
  } else if (op == OPR_OR) {
    FUNC0(fs, e);
  } else if (op == OPR_CONCAT) {
    FUNC5(fs, e);
  } else if (op == OPR_EQ || op == OPR_NE) {
    if (!FUNC2(e)) FUNC4(fs, e);
  } else {
    if (!FUNC3(e)) FUNC4(fs, e);
  }
}