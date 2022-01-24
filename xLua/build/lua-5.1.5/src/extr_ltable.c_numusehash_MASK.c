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
struct TYPE_4__ {int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (const Table *t, int *nums, int *pnasize) {
  int totaluse = 0;  /* total number of elements */
  int ause = 0;  /* summation of `nums' */
  int i = FUNC3(t);
  while (i--) {
    Node *n = &t->node[i];
    if (!FUNC4(FUNC1(n))) {
      ause += FUNC0(FUNC2(n), nums);
      totaluse++;
    }
  }
  *pnasize += ause;
  return totaluse;
}