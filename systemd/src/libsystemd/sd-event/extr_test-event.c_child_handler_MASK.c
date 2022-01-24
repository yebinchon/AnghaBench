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
typedef  int /*<<< orphan*/  siginfo_t ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 void* FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(sd_event_source *s, const siginfo_t *si, void *userdata) {

        FUNC2(*s);
        FUNC2(si);

        FUNC3("got child on %c", FUNC1(userdata));

        FUNC2(userdata == FUNC0('f'));

        FUNC2(FUNC4(FUNC5(s), 0) >= 0);
        FUNC6(s);

        return 1;
}