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
typedef  char* LPWSTR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DEST_IMAGE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* ImageFile ; 
 int /*<<< orphan*/  OptionsAdd ; 
 int /*<<< orphan*/  OptionsRemove ; 
 scalar_t__ OptionsSet ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

BOOL FUNC3(INT i, int argc, LPWSTR argv[])
{
    for (; i < argc; i++)
    {
        if (ImageFile == NULL)
        {
            ImageFile = argv[i];
        }
        else if (argv[i][0] == '+')
        {
            if (OptionsSet)
            {
                FUNC2(L"Unexpected argument - '%s'\n", argv[i]);
                return FALSE;
            }
            OptionsAdd |= FUNC0(argv[i] + 1, DEST_IMAGE);
        }
        else if (argv[i][0] == '-')
        {
            if (OptionsSet)
            {
                FUNC2(L"Unexpected argument - '%s'\n", argv[i]);
                return FALSE;
            }
            OptionsRemove |= FUNC0(argv[i] + 1, DEST_IMAGE);
        }
        else
        {
            OptionsSet = TRUE;
            OptionsAdd = FUNC1(argv[i], NULL, 16);
            if (OptionsAdd == ~0)
                OptionsAdd = 0;
        }
    }

    if (ImageFile == NULL)
    {
        FUNC2(L"No Image specified\n");
        return FALSE;
    }

    return TRUE;
}