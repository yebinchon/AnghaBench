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
struct swaybar {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct swaybar*) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar*) ; 

__attribute__((used)) static void FUNC2(int fd, short mask, void *data) {
	struct swaybar *bar = data;
	if (FUNC0(bar)) {
		FUNC1(bar);
	}
}