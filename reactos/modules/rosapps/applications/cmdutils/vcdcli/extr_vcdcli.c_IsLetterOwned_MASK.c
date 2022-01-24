#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_3__ {size_t Count; scalar_t__* Drives; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  Drives ;
typedef  size_t DWORD ;
typedef  TYPE_1__ DRIVES_LIST ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  IOCTL_VCDROM_ENUMERATE_DRIVES ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

BOOLEAN
FUNC6(WCHAR Letter)
{
    HANDLE hDev;
    BOOLEAN Res;
    DRIVES_LIST Drives;
    DWORD i, BytesRead;

    /* We've to deal with driver */
    hDev = FUNC3();
    if (hDev == INVALID_HANDLE_VALUE)
    {
        FUNC5(stderr, FUNC4("Failed to open VCD: %x\n"), FUNC2());
        return FALSE;
    }

    /* Get the list of the managed drives */
    Res = FUNC1(hDev, IOCTL_VCDROM_ENUMERATE_DRIVES, NULL, 0, &Drives, sizeof(Drives), &BytesRead, NULL);
    if (!Res)
    {
        FUNC5(stderr, FUNC4("Failed to enumerate drives: %x\n"), FUNC2());
        FUNC0(hDev);
        return FALSE;
    }

    /* Don't leak ;-) */
    FUNC0(hDev);

    /* Do we find our letter in the list? */
    for (i = 0; i < Drives.Count; ++i)
    {
        if (Drives.Drives[i] == Letter)
        {
            break;
        }
    }

    /* No? Fail */
    if (i == Drives.Count)
    {
        FUNC5(stderr, FUNC4("%c is not a drive owned by VCD\n"), Letter);
        return FALSE;
    }

    /* Otherwise, that's fine! */
    return TRUE;
}