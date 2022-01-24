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
 int IOPRIO_CLASS_BE ; 
 int IOPRIO_CLASS_IDLE ; 
 int IOPRIO_CLASS_NONE ; 
 int IOPRIO_CLASS_RT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static void FUNC1(void) {
        FUNC0("none", IOPRIO_CLASS_NONE);
        FUNC0("realtime", IOPRIO_CLASS_RT);
        FUNC0("best-effort", IOPRIO_CLASS_BE);
        FUNC0("idle", IOPRIO_CLASS_IDLE);
        FUNC0("0", 0);
        FUNC0("1", 1);
        FUNC0("7", 7);
        FUNC0("8", 8);
        FUNC0("9", -1);
        FUNC0("-1", -1);
}