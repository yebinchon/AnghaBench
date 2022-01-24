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
struct sortby_value {int /*<<< orphan*/  v; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void* a_p, const void* b_p)
{
  struct sortby_value* av = (struct sortby_value*)a_p;
  struct sortby_value* bv = (struct sortby_value*)b_p;
  double a, b;

  if (FUNC0(av->v)) {
    a = FUNC1(av->v);
  }
  else {
    if (FUNC0(bv->v)) {
      return 1;
    }
    return 0;
  }
  if (FUNC0(bv->v)) {
    b = FUNC1(bv->v);
  }
  else {
    return -1;
  }
  if(a > b)
    return 1;
  else if(a < b)
    return -1;
  return 0;
}