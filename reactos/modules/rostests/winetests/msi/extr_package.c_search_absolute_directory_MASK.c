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
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DRIVE_FIXED ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 () ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(LPSTR absolute, LPCSTR relative)
{
    int i, size;
    DWORD attr, drives;

    size = FUNC6(relative);
    drives = FUNC2();
    FUNC4(absolute, "A:\\");
    for (i = 0; i < 26; absolute[0] = '\0', i++)
    {
        if (!(drives & (1 << i)))
            continue;

        absolute[0] = 'A' + i;
        if (FUNC0(absolute) != DRIVE_FIXED)
            continue;

        FUNC5(absolute + 3, relative, size + 1);
        attr = FUNC1(absolute);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            (attr & FILE_ATTRIBUTE_DIRECTORY))
        {
            if (absolute[3 + size - 1] != '\\')
                FUNC3(absolute, "\\");
            break;
        }
        absolute[3] = '\0';
    }
}