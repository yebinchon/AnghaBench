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
typedef  char* sds ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void) {
    sds version = FUNC0();
    FUNC1(
        "redis-cli %s\n"
        "To get help about Redis commands type:\n"
        "      \"help @<group>\" to get a list of commands in <group>\n"
        "      \"help <command>\" for help on <command>\n"
        "      \"help <tab>\" to get a list of possible help topics\n"
        "      \"quit\" to exit\n"
        "\n"
        "To set redis-cli preferences:\n"
        "      \":set hints\" enable online hints\n"
        "      \":set nohints\" disable online hints\n"
        "Set your preferences in ~/.redisclirc\n",
        version
    );
    FUNC2(version);
}