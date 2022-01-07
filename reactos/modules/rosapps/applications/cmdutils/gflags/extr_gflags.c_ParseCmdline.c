
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWSTR ;
typedef int INT ;
typedef void* BOOL ;


 void* FALSE ;
 void* ImageFile_ParseCmdline (int,int,int**) ;
 void* PageHeap_ParseCmdline (int,int,int**) ;
 void* TRUE ;
 int UNICODE_NULL ;
 void* UseImageFile ;
 void* UsePageHeap ;
 int wprintf (char*,...) ;

__attribute__((used)) static BOOL ParseCmdline(int argc, LPWSTR argv[])
{
    INT i;

    if (argc < 2)
    {
        wprintf(L"Not enough args!\n");
        return FALSE;
    }

    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            if (argv[i][1] == L'p' && argv[i][2] == UNICODE_NULL)
            {
                UsePageHeap = TRUE;
                return PageHeap_ParseCmdline(i + 1, argc, argv);
            }
            if (argv[i][1] == L'i' && argv[i][2] == UNICODE_NULL)
            {
                UseImageFile = TRUE;
                return ImageFile_ParseCmdline(i + 1, argc, argv);
            }
        }
        else
        {
            wprintf(L"Invalid option: %s\n", argv[i]);
            return FALSE;
        }
    }

    if (!UsePageHeap && !UseImageFile)
    {
        wprintf(L"Only page heap / image file flags are supported\n");
        return FALSE;
    }

    return TRUE;
}
