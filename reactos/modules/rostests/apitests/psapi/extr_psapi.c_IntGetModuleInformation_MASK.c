#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Path; void* Len; int /*<<< orphan*/  ImageBase; } ;
typedef  TYPE_1__ TEST_MODULE_INFO ;
typedef  char* LPCSTR ;
typedef  char CHAR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOLEAN FUNC7(LPCSTR Module, BOOLEAN IsDriver, BOOLEAN IsProcMod, BOOLEAN BaseName, TEST_MODULE_INFO * Info)
{
    CHAR System[255];
    UINT Len;

    FUNC2(Info, 0, sizeof(TEST_MODULE_INFO));

    /* Get system path */
    Len = FUNC0(System, 255);
    if (Len > 255 || Len == 0)
    {
        FUNC3("GetSystemWindowsDirectory failed\n");
        return FALSE;
    }

    /* Make path to module */
    FUNC4(System, "\\system32\\");
    if (IsDriver) FUNC4(System, "drivers\\");
    FUNC4(System, Module);

    /* Get base address */
    if (IsProcMod)
    {
        Info->ImageBase = FUNC1(System);
        if (!Info->ImageBase)
        {
            FUNC3("IntGetImageBase failed\n");
            return FALSE;
        }
    }
    else
    {
        /* FIXME */
        FUNC3("Not supported yet!\n");
        return FALSE;
    }

    if (BaseName)
    {
        FUNC5(Info->Path, Module);
        Info->Len = FUNC6(Info->Path);
    }
    else
    {
        /* Skip disk */
        FUNC5(Info->Path, System + 2);
        Info->Len = FUNC6(Info->Path);
    }

    return TRUE;
}