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
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 void* FUNC0 (int,int,int**) ; 
 void* FUNC1 (int,int,int**) ; 
 void* TRUE ; 
 int UNICODE_NULL ; 
 void* UseImageFile ; 
 void* UsePageHeap ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static BOOL FUNC3(int argc, LPWSTR argv[])
{
    INT i;

    if (argc < 2)
    {
        FUNC2(L"Not enough args!\n");
        return FALSE;
    }

    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            if (argv[i][1] == L'p' && argv[i][2] == UNICODE_NULL)
            {
                UsePageHeap = TRUE;
                return FUNC1(i + 1, argc, argv);
            }
            if (argv[i][1] == L'i' && argv[i][2] == UNICODE_NULL)
            {
                UseImageFile = TRUE;
                return FUNC0(i + 1, argc, argv);
            }
        }
        else
        {
            FUNC2(L"Invalid option: %s\n", argv[i]);
            return FALSE;
        }
    }

    if (!UsePageHeap && !UseImageFile)
    {
        FUNC2(L"Only page heap / image file flags are supported\n");
        return FALSE;
    }

    return TRUE;
}