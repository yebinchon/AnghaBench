
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPWSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int DEST_IMAGE ;
 scalar_t__ FALSE ;
 int FindFlag (char*,int ) ;
 char* ImageFile ;
 int OptionsAdd ;
 int OptionsRemove ;
 scalar_t__ OptionsSet ;
 scalar_t__ TRUE ;
 int wcstoul (char*,int *,int) ;
 int wprintf (char*,...) ;

BOOL ImageFile_ParseCmdline(INT i, int argc, LPWSTR argv[])
{
    for (; i < argc; i++)
    {
        if (ImageFile == ((void*)0))
        {
            ImageFile = argv[i];
        }
        else if (argv[i][0] == '+')
        {
            if (OptionsSet)
            {
                wprintf(L"Unexpected argument - '%s'\n", argv[i]);
                return FALSE;
            }
            OptionsAdd |= FindFlag(argv[i] + 1, DEST_IMAGE);
        }
        else if (argv[i][0] == '-')
        {
            if (OptionsSet)
            {
                wprintf(L"Unexpected argument - '%s'\n", argv[i]);
                return FALSE;
            }
            OptionsRemove |= FindFlag(argv[i] + 1, DEST_IMAGE);
        }
        else
        {
            OptionsSet = TRUE;
            OptionsAdd = wcstoul(argv[i], ((void*)0), 16);
            if (OptionsAdd == ~0)
                OptionsAdd = 0;
        }
    }

    if (ImageFile == ((void*)0))
    {
        wprintf(L"No Image specified\n");
        return FALSE;
    }

    return TRUE;
}
