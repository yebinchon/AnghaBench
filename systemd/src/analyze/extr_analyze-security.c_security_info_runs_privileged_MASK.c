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
struct security_info {int /*<<< orphan*/  user; scalar_t__ dynamic_user; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct security_info const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct security_info *i)  {
        FUNC1(i);

        if (FUNC0(i->user, "0", "root"))
                return true;

        if (i->dynamic_user)
                return false;

        return FUNC2(i->user);
}