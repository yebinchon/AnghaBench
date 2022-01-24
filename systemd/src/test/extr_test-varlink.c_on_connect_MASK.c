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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  VarlinkServer ;
typedef  int /*<<< orphan*/  Varlink ;

/* Variables and functions */
 scalar_t__ UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(VarlinkServer *s, Varlink *link, void *userdata) {
        uid_t uid = UID_INVALID;

        FUNC0(s);
        FUNC0(link);

        FUNC1(FUNC3(link, &uid) >= 0);
        FUNC1(FUNC2() == uid);

        return 0;
}