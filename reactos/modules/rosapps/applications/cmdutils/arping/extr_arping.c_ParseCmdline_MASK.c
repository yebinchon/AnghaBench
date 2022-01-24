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
typedef  int* LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  IDS_BAD_OPTION ; 
 int /*<<< orphan*/  IDS_BAD_OPTION_FORMAT ; 
 int /*<<< orphan*/  IDS_BAD_PARAMETER ; 
 int /*<<< orphan*/  IDS_BAD_VALUE_OPTION_N ; 
 int /*<<< orphan*/  IDS_DEST_MUST_BE_SPECIFIED ; 
 int /*<<< orphan*/  IDS_SRC_MUST_BE_SPECIFIED ; 
 int /*<<< orphan*/  NeverStop ; 
 int /*<<< orphan*/  PingCount ; 
 scalar_t__* SourceName ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__* TargetName ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(int argc, LPWSTR argv[])
{
    INT i;

    if (argc < 3)
    {
        FUNC1();
        return FALSE;
    }

    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == L'-' || argv[i][0] == L'/')
        {
            switch (argv[i][1])
            {
                case L't': NeverStop = TRUE; break;
                case L'n':
                    if (i + 1 < argc)
                    {
                        PingCount = FUNC3(argv[++i], NULL, 0);

                        if (PingCount == 0)
                        {
                            FUNC0(IDS_BAD_VALUE_OPTION_N, UINT_MAX);
                            return FALSE;
                        }
                    }
                    else
                    {
                        FUNC0(IDS_BAD_OPTION_FORMAT, argv[i]);
                        return FALSE;
                    }
                    break;

                case L's':
                    if (SourceName[0] != 0)
                    {
                        FUNC0(IDS_BAD_PARAMETER, argv[i]);
                        return FALSE;
                    }

                    if (i + 1 < argc)
                    {
                        FUNC2(SourceName, argv[++i]);
                    }
                    else
                    {
                        FUNC0(IDS_BAD_OPTION_FORMAT, argv[i]);
                        return FALSE;
                    }
                    break;

                case '?':
                    FUNC1();
                    return FALSE;

                default:
                    FUNC0(IDS_BAD_OPTION, argv[i]);
                    return FALSE;
            }
        }
        else
        {
            if (TargetName[0] != 0)
            {
                FUNC0(IDS_BAD_PARAMETER, argv[i]);
                return FALSE;
            }
            else
            {
                FUNC2(TargetName, argv[i]);
            }
        }
    }

    if (TargetName[0] == 0)
    {
        FUNC0(IDS_DEST_MUST_BE_SPECIFIED);
        return FALSE;
    }

    if (SourceName[0] == 0)
    {
        FUNC0(IDS_SRC_MUST_BE_SPECIFIED);
        return FALSE;
    }

    return TRUE;
}