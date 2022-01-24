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
struct callout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  callout_mtx ; 
 int /*<<< orphan*/  FUNC0 (struct callout*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct callout *c, int drain) {
  FUNC1(&callout_mtx);
  FUNC0(c, drain);
  FUNC2(&callout_mtx);
  return 0;
}