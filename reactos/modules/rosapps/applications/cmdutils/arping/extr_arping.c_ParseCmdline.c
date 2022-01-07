
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int FormatOutput (int ,...) ;
 int IDS_BAD_OPTION ;
 int IDS_BAD_OPTION_FORMAT ;
 int IDS_BAD_PARAMETER ;
 int IDS_BAD_VALUE_OPTION_N ;
 int IDS_DEST_MUST_BE_SPECIFIED ;
 int IDS_SRC_MUST_BE_SPECIFIED ;
 int NeverStop ;
 int PingCount ;
 scalar_t__* SourceName ;
 int TRUE ;
 scalar_t__* TargetName ;
 int UINT_MAX ;
 int Usage () ;
 int wcscpy (scalar_t__*,int*) ;
 int wcstoul (int*,int *,int ) ;

__attribute__((used)) static BOOL ParseCmdline(int argc, LPWSTR argv[])
{
    INT i;

    if (argc < 3)
    {
        Usage();
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
                        PingCount = wcstoul(argv[++i], ((void*)0), 0);

                        if (PingCount == 0)
                        {
                            FormatOutput(IDS_BAD_VALUE_OPTION_N, UINT_MAX);
                            return FALSE;
                        }
                    }
                    else
                    {
                        FormatOutput(IDS_BAD_OPTION_FORMAT, argv[i]);
                        return FALSE;
                    }
                    break;

                case L's':
                    if (SourceName[0] != 0)
                    {
                        FormatOutput(IDS_BAD_PARAMETER, argv[i]);
                        return FALSE;
                    }

                    if (i + 1 < argc)
                    {
                        wcscpy(SourceName, argv[++i]);
                    }
                    else
                    {
                        FormatOutput(IDS_BAD_OPTION_FORMAT, argv[i]);
                        return FALSE;
                    }
                    break;

                case '?':
                    Usage();
                    return FALSE;

                default:
                    FormatOutput(IDS_BAD_OPTION, argv[i]);
                    return FALSE;
            }
        }
        else
        {
            if (TargetName[0] != 0)
            {
                FormatOutput(IDS_BAD_PARAMETER, argv[i]);
                return FALSE;
            }
            else
            {
                wcscpy(TargetName, argv[i]);
            }
        }
    }

    if (TargetName[0] == 0)
    {
        FormatOutput(IDS_DEST_MUST_BE_SPECIFIED);
        return FALSE;
    }

    if (SourceName[0] == 0)
    {
        FormatOutput(IDS_SRC_MUST_BE_SPECIFIED);
        return FALSE;
    }

    return TRUE;
}
