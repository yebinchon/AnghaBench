#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ Min; scalar_t__ Max; } ;
struct TYPE_10__ {TYPE_1__ Success; int /*<<< orphan*/  Path; scalar_t__ Expand; } ;
typedef  TYPE_2__ WCHAR ;
typedef  size_t ULONG ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,size_t) ; 
 int MAX_PATH ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (TYPE_2__*) ; 
 scalar_t__ g_WinVersion ; 
 int /*<<< orphan*/  FUNC4 (int,char*,size_t,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* tests ; 

__attribute__((used)) static void FUNC5()
{
    ULONG n;
    BOOL Protected;
    WCHAR Buffer[MAX_PATH * 3];

    for (n = 0; n < FUNC3(tests); ++n)
    {
        if (tests[n].Expand)
            FUNC0(tests[n].Path, Buffer, FUNC3(Buffer));
        else
            FUNC2(Buffer, FUNC3(Buffer), tests[n].Path);

        Protected = FUNC1(NULL, Buffer);

        if (g_WinVersion >= tests[n].Success.Min && g_WinVersion <= tests[n].Success.Max)
        {
            FUNC4(Protected, "[%lu,0x%04lx]: Failed: %S\n", n, g_WinVersion, Buffer);
        }
        else
        {
            FUNC4(!Protected, "[%lu,0x%04lx]: Succeeded: %S\n", n, g_WinVersion, Buffer);
        }
    }
}