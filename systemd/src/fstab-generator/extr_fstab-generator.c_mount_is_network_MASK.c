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
struct mntent {int /*<<< orphan*/  mnt_type; int /*<<< orphan*/  mnt_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mntent*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct mntent *me) {
        FUNC0(me);

        return FUNC1(me->mnt_opts, "_netdev\0") ||
               FUNC2(me->mnt_type);
}