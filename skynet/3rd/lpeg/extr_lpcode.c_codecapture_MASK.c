#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  key; int /*<<< orphan*/  cap; } ;
typedef  TYPE_1__ TTree ;
typedef  int /*<<< orphan*/  CompileState ;
typedef  int /*<<< orphan*/  Charset ;

/* Variables and functions */
 int /*<<< orphan*/  Cclose ; 
 int /*<<< orphan*/  ICloseCapture ; 
 int /*<<< orphan*/  IFullCapture ; 
 int /*<<< orphan*/  IOpenCapture ; 
 int MAXOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 (CompileState *compst, TTree *tree, int tt,
                         const Charset *fl) {
  int len = FUNC2(FUNC4(tree));
  if (len >= 0 && len <= MAXOFF && !FUNC3(FUNC4(tree))) {
    FUNC1(compst, FUNC4(tree), 0, tt, fl);
    FUNC0(compst, IFullCapture, tree->cap, tree->key, len);
  }
  else {
    FUNC0(compst, IOpenCapture, tree->cap, tree->key, 0);
    FUNC1(compst, FUNC4(tree), 0, tt, fl);
    FUNC0(compst, ICloseCapture, Cclose, 0, 0);
  }
}