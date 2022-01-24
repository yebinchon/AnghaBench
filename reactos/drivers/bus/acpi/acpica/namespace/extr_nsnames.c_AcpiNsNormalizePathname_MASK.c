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
typedef  scalar_t__ UINT32 ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (
    char                    *OriginalPath)
{
    char                    *InputPath = OriginalPath;
    char                    *NewPathBuffer;
    char                    *NewPath;
    UINT32                  i;


    /* Allocate a temp buffer in which to construct the new path */

    NewPathBuffer = FUNC0 (FUNC3 (InputPath) + 1);
    NewPath = NewPathBuffer;
    if (!NewPathBuffer)
    {
        return;
    }

    /* Special characters may appear at the beginning of the path */

    if (*InputPath == '\\')
    {
        *NewPath = *InputPath;
        NewPath++;
        InputPath++;
    }

    while (*InputPath == '^')
    {
        *NewPath = *InputPath;
        NewPath++;
        InputPath++;
    }

    /* Remainder of the path */

    while (*InputPath)
    {
        /* Do one nameseg at a time */

        for (i = 0; (i < ACPI_NAMESEG_SIZE) && *InputPath; i++)
        {
            if ((i == 0) || (*InputPath != '_')) /* First char is allowed to be underscore */
            {
                *NewPath = *InputPath;
                NewPath++;
            }

            InputPath++;
        }

        /* Dot means that there are more namesegs to come */

        if (*InputPath == '.')
        {
            *NewPath = *InputPath;
            NewPath++;
            InputPath++;
        }
    }

    *NewPath = 0;
    FUNC2 (OriginalPath, NewPathBuffer);
    FUNC1 (NewPathBuffer);
}