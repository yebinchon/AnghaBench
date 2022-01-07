
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWSTR ;
typedef int INT ;
typedef void* BOOL ;


 void* FALSE ;
 void* Full ;
 int* Image ;
 void* Set ;
 void* TRUE ;
 void* Unset ;
 scalar_t__ wcscmp (int*,char*) ;
 int wprintf (char*,...) ;

BOOL PageHeap_ParseCmdline(INT i, int argc, LPWSTR argv[])
{
    for (; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            if (wcscmp(argv[i], L"/enable") == 0)
            {
                Set = TRUE;
            }
            else if (wcscmp(argv[i], L"/disable") == 0)
            {
                Unset = TRUE;
            }
            else if (wcscmp(argv[i], L"/full") == 0)
            {
                Full = TRUE;
            }
        }
        else if (Image == ((void*)0))
        {
            Image = argv[i];
        }
        else
        {
            wprintf(L"Invalid option: %s\n", argv[i]);
            return FALSE;
        }
    }

    if (Set && Unset)
    {
        wprintf(L"ENABLE and DISABLED cannot be set together\n");
        return FALSE;
    }

    if (Image == ((void*)0) && (Set || Unset || Full))
    {
        wprintf(L"Can't ENABLE or DISABLE with no image\n");
        return FALSE;
    }

    if (!Set && !Unset && Full)
    {
        wprintf(L"Cannot deal with full traces with no other indication\n");
        return FALSE;
    }

    return TRUE;
}
