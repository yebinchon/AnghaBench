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
 int ACQUIRE_NO_DEV_NULL ; 
 int ACQUIRE_NO_MEMFD ; 
 int ACQUIRE_NO_PIPE ; 
 int ACQUIRE_NO_TMPFILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void) {

        FUNC0(0);
        FUNC0(ACQUIRE_NO_DEV_NULL);
        FUNC0(ACQUIRE_NO_MEMFD);
        FUNC0(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_MEMFD);
        FUNC0(ACQUIRE_NO_PIPE);
        FUNC0(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_PIPE);
        FUNC0(ACQUIRE_NO_MEMFD|ACQUIRE_NO_PIPE);
        FUNC0(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_MEMFD|ACQUIRE_NO_PIPE);
        FUNC0(ACQUIRE_NO_DEV_NULL|ACQUIRE_NO_MEMFD|ACQUIRE_NO_PIPE|ACQUIRE_NO_TMPFILE);
}