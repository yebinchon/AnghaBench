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
typedef  char TCHAR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTLOG_ERROR_TYPE ; 
 int /*<<< orphan*/  EVENTLOG_INFORMATION_TYPE ; 
 int /*<<< orphan*/  EVENTLOG_SUCCESS ; 
 int /*<<< orphan*/  EVENTLOG_WARNING_TYPE ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char*) ; 
 void* m_Category ; 
 void* m_EventID ; 
 char* m_MachineName ; 
 int /*<<< orphan*/  m_Severity ; 
 char* m_Source ; 
 char* m_Text ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static BOOL FUNC3(int argc, TCHAR **argv)
{
    INT i;
    BOOL ShowUsage;
    BOOL FoundEventText;
    BOOL InvalidOption;

    if (argc < 2) {
        ShowUsage = TRUE;
    } else {
        ShowUsage = FALSE;
    }

    FoundEventText = FALSE;
    InvalidOption = FALSE;

    for (i = 1; i < argc; i++) {
        if (argv[i][0] == '-' || argv[i][0] == '/') {
            switch (argv[i][1]) {
                case 's':
                case 'S':
                    switch (argv[i + 1][0])
                    {
                        case 's':
                        case 'S':
                            m_Severity = EVENTLOG_SUCCESS;
                            i++;
                            break;
                        case 'i':
                        case 'I':
                            m_Severity = EVENTLOG_INFORMATION_TYPE;
                            i++;
                            break;
                        case 'w':
                        case 'W':
                            m_Severity = EVENTLOG_WARNING_TYPE;
                            i++;
                            break;
                        case 'e':
                        case 'E':
                            m_Severity = EVENTLOG_ERROR_TYPE;
                            i++;
                            break;
                        case 'f':
                        case 'F':
                            m_Severity = EVENTLOG_ERROR_TYPE;
                            i++;
                            break;
                        default:
                            FUNC2("Bad option %s.\n", argv[i]);
                            FUNC0();
                            return FALSE;
                    }
                    break;
                case 'm':
                case 'M':
                    m_MachineName = argv[i + 1];
                    i++;
                    break;
                case 'r':
                case 'R':
                    m_Source = argv[i + 1];
                    i++;
                    break;
                case 'c':
                case 'C':
                    m_Category = FUNC1(argv[i + 1]);
                    i++;
                    break;
                case 'e':
                case 'E':
                    m_EventID  = FUNC1(argv[i + 1]);
                    i++;
                    break;
                case '?':
                    ShowUsage = TRUE;
                    break;
                default:
                    FUNC2("Bad option %s.\n", argv[i]);
                    FUNC0();
                    return FALSE;
            }
            if (InvalidOption) {
                FUNC2("Bad option format %s.\n", argv[i]);
                return FALSE;
            }
        } else {
            if (FoundEventText) {
                FUNC2("Bad parameter %s.\n", argv[i]);
                return FALSE;
            } else {
                m_Text = argv[i];
                FoundEventText = TRUE;
            }
        }
    }

    if ((!ShowUsage) && (!FoundEventText)) {
        FUNC2("The event text must be specified.\n");
        return FALSE;
    }

    if (ShowUsage) {
        FUNC0();
        return FALSE;
    }

    return TRUE;
}