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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void* const) ; 
 int /*<<< orphan*/  FUNC2 (void* const) ; 
 int /*<<< orphan*/  num_free_calls ; 

void FUNC3(void* const ptr) {
  if (ptr != NULL) {
    FUNC0(&num_free_calls);
    FUNC1(ptr);
  }
  FUNC2(ptr);
}