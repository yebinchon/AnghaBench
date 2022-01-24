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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ BUILD_MAX_FOLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* foldkeys ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int funcidx ; 
 int lineno ; 
 int FUNC2 (char**,int,int) ; 
 scalar_t__ nkeys ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(char *p)
{
  uint32_t op = FUNC2(&p, 0, 0);
  uint32_t left = FUNC2(&p, 0, 0x7f);
  uint32_t right = FUNC2(&p, 1, 0x3ff);
  uint32_t key = (funcidx << 24) | (op << 17) | (left << 10) | right;
  uint32_t i;
  if (nkeys >= BUILD_MAX_FOLD) {
    FUNC1(stderr, "Error: too many fold rules, increase BUILD_MAX_FOLD.\n");
    FUNC0(1);
  }
  /* Simple insertion sort to detect duplicates. */
  for (i = nkeys; i > 0; i--) {
    if ((foldkeys[i-1]&0xffffff) < (key & 0xffffff))
      break;
    if ((foldkeys[i-1]&0xffffff) == (key & 0xffffff)) {
      FUNC1(stderr, "Error: duplicate fold definition at line %d\n", lineno);
      FUNC0(1);
    }
    foldkeys[i] = foldkeys[i-1];
  }
  foldkeys[i] = key;
  nkeys++;
}