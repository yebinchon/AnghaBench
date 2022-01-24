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
struct watch {int /*<<< orphan*/  changed; int /*<<< orphan*/  triggers; } ;
typedef  enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline enum watch_trigger
FUNC1(struct watch *watch)
{
	return FUNC0(watch->triggers, watch->changed);
}