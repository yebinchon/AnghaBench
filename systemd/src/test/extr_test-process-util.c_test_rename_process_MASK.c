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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(void) {
        FUNC1(NULL, -EINVAL);
        FUNC1("", -EINVAL);
        FUNC1("foo", 1); /* should always fit */
        FUNC1("this is a really really long process name, followed by some more words", 0); /* unlikely to fit */
        FUNC1("1234567", 1); /* should always fit */
        FUNC0(); /* multiple invocations and dropped privileges */
}