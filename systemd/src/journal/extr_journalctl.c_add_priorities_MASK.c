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
typedef  int /*<<< orphan*/  sd_journal ;
typedef  int /*<<< orphan*/  match ;

/* Variables and functions */
 int LOG_DEBUG ; 
 int LOG_EMERG ; 
 int arg_priorities ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(sd_journal *j) {
        char match[] = "PRIORITY=0";
        int i, r;
        FUNC0(j);

        if (arg_priorities == 0xFF)
                return 0;

        for (i = LOG_EMERG; i <= LOG_DEBUG; i++)
                if (arg_priorities & (1 << i)) {
                        match[sizeof(match)-2] = '0' + i;

                        r = FUNC3(j, match, FUNC4(match));
                        if (r < 0)
                                return FUNC1(r, "Failed to add match: %m");
                }

        r = FUNC2(j);
        if (r < 0)
                return FUNC1(r, "Failed to add conjunction: %m");

        return 0;
}