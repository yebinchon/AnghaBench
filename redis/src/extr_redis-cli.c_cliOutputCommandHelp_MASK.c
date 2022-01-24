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
struct commandHelp {char* name; char* params; char* summary; char* since; size_t group; } ;

/* Variables and functions */
 char** commandGroups ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct commandHelp *help, int group) {
    FUNC0("\r\n  \x1b[1m%s\x1b[0m \x1b[90m%s\x1b[0m\r\n", help->name, help->params);
    FUNC0("  \x1b[33msummary:\x1b[0m %s\r\n", help->summary);
    FUNC0("  \x1b[33msince:\x1b[0m %s\r\n", help->since);
    if (group) {
        FUNC0("  \x1b[33mgroup:\x1b[0m %s\r\n", commandGroups[help->group]);
    }
}