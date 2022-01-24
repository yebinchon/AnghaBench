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
typedef  int ULONG ;
typedef  char* PCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  KDB_ENTER_CONDITION ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int KdbBreakOnModuleLoad ; 
 int /*<<< orphan*/  KdbDoNotEnter ; 
 int /*<<< orphan*/  KdbEnterAlways ; 
 int /*<<< orphan*/  KdbEnterFromKmode ; 
 int /*<<< orphan*/  KdbEnterFromUmode ; 
 int KdbUseIntelSyntax ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char* const*) ; 
 int TRUE ; 
 scalar_t__ FUNC6 (char* const,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOLEAN
FUNC9(
    ULONG Argc,
    PCHAR Argv[])
{
    LONG l;
    BOOLEAN First;
    PCHAR pend = 0;
    KDB_ENTER_CONDITION ConditionFirst = KdbDoNotEnter;
    KDB_ENTER_CONDITION ConditionLast = KdbDoNotEnter;

    static const PCHAR ExceptionNames[21] =
    {
        "ZERODEVIDE", "DEBUGTRAP", "NMI", "INT3", "OVERFLOW", "BOUND", "INVALIDOP",
        "NOMATHCOP", "DOUBLEFAULT", "RESERVED(9)", "INVALIDTSS", "SEGMENTNOTPRESENT",
        "STACKFAULT", "GPF", "PAGEFAULT", "RESERVED(15)", "MATHFAULT", "ALIGNMENTCHECK",
        "MACHINECHECK", "SIMDFAULT", "OTHERS"
    };

    if (Argc == 1)
    {
        FUNC3("Available settings:\n");
        FUNC3("  syntax [intel|at&t]\n");
        FUNC3("  condition [exception|*] [first|last] [never|always|kmode|umode]\n");
        FUNC3("  break_on_module_load [true|false]\n");
    }
    else if (FUNC7(Argv[1], "syntax") == 0)
    {
        if (Argc == 2)
        {
            FUNC3("syntax = %s\n", KdbUseIntelSyntax ? "intel" : "at&t");
        }
        else if (Argc >= 3)
        {
            if (FUNC6(Argv[2], "intel") == 0)
                KdbUseIntelSyntax = TRUE;
            else if (FUNC6(Argv[2], "at&t") == 0)
                KdbUseIntelSyntax = FALSE;
            else
                FUNC3("Unknown syntax '%s'.\n", Argv[2]);
        }
    }
    else if (FUNC7(Argv[1], "condition") == 0)
    {
        if (Argc == 2)
        {
            FUNC3("Conditions:                 (First)  (Last)\n");
            for (l = 0; l < FUNC5(ExceptionNames) - 1; l++)
            {
                if (!ExceptionNames[l])
                    continue;

                if (!FUNC2(l, TRUE, &ConditionFirst))
                    FUNC0(FALSE);

                if (!FUNC2(l, FALSE, &ConditionLast))
                    FUNC0(FALSE);

                FUNC3("  #%02d  %-20s %-8s %-8s\n", l, ExceptionNames[l],
                          FUNC1(ConditionFirst),
                          FUNC1(ConditionLast));
            }

            FUNC0(l == (FUNC5(ExceptionNames) - 1));
            FUNC3("       %-20s %-8s %-8s\n", ExceptionNames[l],
                      FUNC1(ConditionFirst),
                      FUNC1(ConditionLast));
        }
        else
        {
            if (Argc >= 5 && FUNC7(Argv[2], "*") == 0) /* Allow * only when setting condition */
            {
                l = -1;
            }
            else
            {
                l = FUNC8(Argv[2], &pend, 0);

                if (Argv[2] == pend)
                {
                    for (l = 0; l < FUNC5(ExceptionNames); l++)
                    {
                        if (!ExceptionNames[l])
                            continue;

                        if (FUNC6(ExceptionNames[l], Argv[2]) == 0)
                            break;
                    }
                }

                if (l >= FUNC5(ExceptionNames))
                {
                    FUNC3("Unknown exception '%s'.\n", Argv[2]);
                    return TRUE;
                }
            }

            if (Argc > 4)
            {
                if (FUNC6(Argv[3], "first") == 0)
                    First = TRUE;
                else if (FUNC6(Argv[3], "last") == 0)
                    First = FALSE;
                else
                {
                    FUNC3("set condition: second argument must be 'first' or 'last'\n");
                    return TRUE;
                }

                if (FUNC6(Argv[4], "never") == 0)
                    ConditionFirst = KdbDoNotEnter;
                else if (FUNC6(Argv[4], "always") == 0)
                    ConditionFirst = KdbEnterAlways;
                else if (FUNC6(Argv[4], "umode") == 0)
                    ConditionFirst = KdbEnterFromUmode;
                else if (FUNC6(Argv[4], "kmode") == 0)
                    ConditionFirst = KdbEnterFromKmode;
                else
                {
                    FUNC3("set condition: third argument must be 'never', 'always', 'umode' or 'kmode'\n");
                    return TRUE;
                }

                if (!FUNC4(l, First, ConditionFirst))
                {
                    if (l >= 0)
                        FUNC3("Couldn't change condition for exception #%02d\n", l);
                    else
                        FUNC3("Couldn't change condition for all exceptions\n", l);
                }
            }
            else /* Argc >= 3 */
            {
                if (!FUNC2(l, TRUE, &ConditionFirst))
                    FUNC0(FALSE);

                if (!FUNC2(l, FALSE, &ConditionLast))
                    FUNC0(FALSE);

                if (l < (FUNC5(ExceptionNames) - 1))
                {
                    FUNC3("Condition for exception #%02d (%s): FirstChance %s  LastChance %s\n",
                              l, ExceptionNames[l],
                              FUNC1(ConditionFirst),
                              FUNC1(ConditionLast));
                }
                else
                {
                    FUNC3("Condition for all other exceptions: FirstChance %s  LastChance %s\n",
                              FUNC1(ConditionFirst),
                              FUNC1(ConditionLast));
                }
            }
        }
    }
    else if (FUNC7(Argv[1], "break_on_module_load") == 0)
    {
        if (Argc == 2)
            FUNC3("break_on_module_load = %s\n", KdbBreakOnModuleLoad ? "enabled" : "disabled");
        else if (Argc >= 3)
        {
            if (FUNC6(Argv[2], "enable") == 0 || FUNC6(Argv[2], "enabled") == 0 || FUNC6(Argv[2], "true") == 0)
                KdbBreakOnModuleLoad = TRUE;
            else if (FUNC6(Argv[2], "disable") == 0 || FUNC6(Argv[2], "disabled") == 0 || FUNC6(Argv[2], "false") == 0)
                KdbBreakOnModuleLoad = FALSE;
            else
                FUNC3("Unknown setting '%s'.\n", Argv[2]);
        }
    }
    else
    {
        FUNC3("Unknown setting '%s'.\n", Argv[1]);
    }

    return TRUE;
}