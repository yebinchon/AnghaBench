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
struct aeEventLoop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aeEventLoop*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct aeEventLoop *eventLoop) {
    FUNC0(eventLoop);
    if (FUNC3()) FUNC2();
    FUNC1();
}