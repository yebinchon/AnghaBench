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
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  KillWho ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(Unit *u, KillWho who, int signo, sd_bus_error *error) {
        return FUNC0(u, who, signo, -1, -1, error);
}