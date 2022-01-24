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
typedef  scalar_t__ OLECHAR ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LONG FUNC2(
    const OLECHAR *name1,
    const OLECHAR *name2)
{
  LONG diff      = FUNC0(name1) - FUNC0(name2);

  while (diff == 0 && *name1 != 0)
  {
    /*
     * We compare the string themselves only when they are of the same length
     */
    diff = FUNC1(*name1++) - FUNC1(*name2++);
  }

  return diff;
}