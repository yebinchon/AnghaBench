
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int EVENTLOG_ERROR_TYPE ;
 int EVENTLOG_INFORMATION_TYPE ;
 int EVENTLOG_SUCCESS ;
 int EVENTLOG_WARNING_TYPE ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int Usage () ;
 void* atoi (char*) ;
 void* m_Category ;
 void* m_EventID ;
 char* m_MachineName ;
 int m_Severity ;
 char* m_Source ;
 char* m_Text ;
 int printf (char*,...) ;

__attribute__((used)) static BOOL ParseCmdline(int argc, TCHAR **argv)
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
                            printf("Bad option %s.\n", argv[i]);
                            Usage();
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
                    m_Category = atoi(argv[i + 1]);
                    i++;
                    break;
                case 'e':
                case 'E':
                    m_EventID = atoi(argv[i + 1]);
                    i++;
                    break;
                case '?':
                    ShowUsage = TRUE;
                    break;
                default:
                    printf("Bad option %s.\n", argv[i]);
                    Usage();
                    return FALSE;
            }
            if (InvalidOption) {
                printf("Bad option format %s.\n", argv[i]);
                return FALSE;
            }
        } else {
            if (FoundEventText) {
                printf("Bad parameter %s.\n", argv[i]);
                return FALSE;
            } else {
                m_Text = argv[i];
                FoundEventText = TRUE;
            }
        }
    }

    if ((!ShowUsage) && (!FoundEventText)) {
        printf("The event text must be specified.\n");
        return FALSE;
    }

    if (ShowUsage) {
        Usage();
        return FALSE;
    }

    return TRUE;
}
