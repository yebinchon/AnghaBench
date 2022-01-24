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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  a ;
typedef  int /*<<< orphan*/  Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ *,int) ; 
 int numints ; 

__attribute__((used)) static Node *FUNC4 (const Table *t, lua_Number n) {
  unsigned int a[numints];
  int i;
  if (FUNC2(n, 0))  /* avoid problems with -0 */
    return FUNC0(t, 0);
  FUNC3(a, &n, sizeof(a));
  for (i = 1; i < numints; i++) a[0] += a[i];
  return FUNC1(t, a[0]);
}