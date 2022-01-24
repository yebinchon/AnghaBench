#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hints; } ;

/* Variables and functions */
 TYPE_1__ pref ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(char **argv, int argc, int interactive) {
    if (!FUNC1(argv[0],":set") && argc >= 2) {
        if (!FUNC1(argv[1],"hints")) pref.hints = 1;
        else if (!FUNC1(argv[1],"nohints")) pref.hints = 0;
        else {
            FUNC0("%sunknown redis-cli preference '%s'\n",
                interactive ? "" : ".redisclirc: ",
                argv[1]);
        }
    } else {
        FUNC0("%sunknown redis-cli internal command '%s'\n",
            interactive ? "" : ".redisclirc: ",
            argv[0]);
    }
}