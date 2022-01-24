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
struct timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct timer*) ; 
 int /*<<< orphan*/  FUNC3 (struct timer*) ; 

__attribute__((used)) static void 
FUNC4(struct timer *T) {
	FUNC0(T);

	// try to dispatch timeout 0 (rare condition)
	FUNC2(T);

	// shift time first, and then dispatch timer message
	FUNC3(T);

	FUNC2(T);

	FUNC1(T);
}