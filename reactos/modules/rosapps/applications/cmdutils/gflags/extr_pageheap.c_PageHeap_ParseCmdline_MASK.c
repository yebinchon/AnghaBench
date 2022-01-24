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
 void* Full ; 
 int* Image ; 
 void* Set ; 
 void* TRUE ; 
 void* Unset ; 
 scalar_t__ FUNC0 (int*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

BOOL FUNC2(INT i, int argc, LPWSTR argv[])
{
    for (; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            if (FUNC0(argv[i], L"/enable") == 0)
            {
                Set = TRUE;
            }
            else if (FUNC0(argv[i], L"/disable") == 0)
            {
                Unset = TRUE;
            }
            else if (FUNC0(argv[i], L"/full") == 0)
            {
                Full = TRUE;
            }
        }
        else if (Image == NULL)
        {
            Image = argv[i];
        }
        else
        {
            FUNC1(L"Invalid option: %s\n", argv[i]);
            return FALSE;
        }
    }

    if (Set && Unset)
    {
        FUNC1(L"ENABLE and DISABLED cannot be set together\n");
        return FALSE;
    }

    if (Image == NULL && (Set || Unset || Full))
    {
        FUNC1(L"Can't ENABLE or DISABLE with no image\n");
        return FALSE;
    }

    if (!Set && !Unset && Full)
    {
        FUNC1(L"Cannot deal with full traces with no other indication\n");
        return FALSE;
    }

    return TRUE;
}