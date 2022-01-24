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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  opt_buffered ; 
 scalar_t__* opt_logFile ; 
 char* opt_mod ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(FILE **plogFile)
{
    if (*opt_logFile)
    {
        if (*plogFile)
            FUNC0(*plogFile);
        *plogFile = NULL;

        if (FUNC4(opt_logFile,"none") == 0)
            return 0; //just close

        *plogFile = FUNC1(opt_logFile, opt_mod ? opt_mod : "a");
        if (*plogFile)
        {
            // disable buffering so fflush is not needed
            if (!opt_buffered)
            {
                FUNC2(1, "Disabling log buffering on %s\n", opt_logFile);
                FUNC3(*plogFile, NULL);
            }
            else
                FUNC2(1, "Enabling log buffering on %s\n", opt_logFile);
        }
        else
        {
            FUNC2(0, "Could not open logfile %s (%s)\n", opt_logFile, FUNC5(errno));
            return 2;
        }
    }
    return 0;
}