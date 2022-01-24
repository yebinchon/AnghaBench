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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  linenoiseCompletions ;
struct TYPE_2__ {int type; char* full; } ;

/* Variables and functions */
 int CLI_HELP_COMMAND ; 
 int CLI_HELP_GROUP ; 
 TYPE_1__* helpEntries ; 
 int helpEntriesLen ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,size_t) ; 

__attribute__((used)) static void FUNC7(const char *buf, linenoiseCompletions *lc) {
    size_t startpos = 0;
    int mask;
    int i;
    size_t matchlen;
    sds tmp;

    if (FUNC6(buf,"help ",5) == 0) {
        startpos = 5;
        while (FUNC0(buf[startpos])) startpos++;
        mask = CLI_HELP_COMMAND | CLI_HELP_GROUP;
    } else {
        mask = CLI_HELP_COMMAND;
    }

    for (i = 0; i < helpEntriesLen; i++) {
        if (!(helpEntries[i].type & mask)) continue;

        matchlen = FUNC5(buf+startpos);
        if (FUNC6(buf+startpos,helpEntries[i].full,matchlen) == 0) {
            tmp = FUNC4(buf,startpos);
            tmp = FUNC2(tmp,helpEntries[i].full);
            FUNC1(lc,tmp);
            FUNC3(tmp);
        }
    }
}