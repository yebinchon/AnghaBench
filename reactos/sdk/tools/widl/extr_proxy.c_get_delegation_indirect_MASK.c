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
typedef  int /*<<< orphan*/  type_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const type_t *iface, const type_t ** delegate_to)
{
  const type_t * cur_iface;
  for (cur_iface = iface; cur_iface != NULL; cur_iface = FUNC1(cur_iface))
    if (FUNC0(cur_iface))
    {
      if(delegate_to)
        *delegate_to = FUNC1(cur_iface);
      return 1;
    }
  return 0;
}