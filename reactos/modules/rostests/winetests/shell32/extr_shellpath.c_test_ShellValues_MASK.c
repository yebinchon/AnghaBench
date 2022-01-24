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
struct shellExpectedValues {int numTypes; int* types; int /*<<< orphan*/  folder; } ;
typedef  int BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
#define  PT_DRIVE 131 
#define  PT_DRIVE2 130 
#define  PT_FOLDER 129 
#define  PT_IESPECIAL2 128 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ pSHGetFolderLocation ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct shellExpectedValues testEntries[],
 int numEntries, BOOL optional)
{
    int i;

    for (i = 0; i < numEntries; i++)
    {
        BYTE type;
        int j;
        BOOL foundTypeMatch = FALSE;

        if (pSHGetFolderLocation)
        {
            type = FUNC3(testEntries[i].folder);
            for (j = 0; !foundTypeMatch && j < testEntries[i].numTypes; j++)
                if (testEntries[i].types[j] == type)
                    foundTypeMatch = TRUE;
            FUNC2(foundTypeMatch || optional || FUNC0(type == 0xff) /* Win9x */,
             "%s has unexpected type %d (0x%02x)\n",
             FUNC1(testEntries[i].folder), type, type);
        }
        type = FUNC4(testEntries[i].folder);
        for (j = 0, foundTypeMatch = FALSE; !foundTypeMatch &&
         j < testEntries[i].numTypes; j++)
            if (testEntries[i].types[j] == type)
                foundTypeMatch = TRUE;
        FUNC2(foundTypeMatch || optional || FUNC0(type == 0xff) /* Win9x */,
         "%s has unexpected type %d (0x%02x)\n",
         FUNC1(testEntries[i].folder), type, type);
        switch (type)
        {
            case PT_FOLDER:
            case PT_DRIVE:
            case PT_DRIVE2:
            case PT_IESPECIAL2:
                FUNC5(optional, testEntries[i].folder);
                FUNC6(optional, testEntries[i].folder);
                break;
        }
    }
}