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
 int SIGRTMAX ; 
 int SIGRTMIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC1(SIGRTMIN);
        FUNC1(SIGRTMAX);

        /* We use signals SIGRTMIN+0 to SIGRTMIN+24 unconditionally */
        FUNC0(SIGRTMAX - SIGRTMIN >= 24);
}