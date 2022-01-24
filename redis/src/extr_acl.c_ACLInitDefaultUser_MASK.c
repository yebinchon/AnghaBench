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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DefaultUser ; 

void FUNC2(void) {
    DefaultUser = FUNC0("default",7);
    FUNC1(DefaultUser,"+@all",-1);
    FUNC1(DefaultUser,"~*",-1);
    FUNC1(DefaultUser,"on",-1);
    FUNC1(DefaultUser,"nopass",-1);
}