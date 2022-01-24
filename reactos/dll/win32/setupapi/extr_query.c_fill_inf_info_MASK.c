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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int InfCount; int /*<<< orphan*/ * VersionData; int /*<<< orphan*/  InfStyle; } ;
typedef  TYPE_1__* PSP_INF_INFORMATION ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HINF ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INF_STYLE_WIN4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SP_INF_INFORMATION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VersionData ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(HINF inf, PSP_INF_INFORMATION buffer, DWORD size, DWORD *required)
{
    LPCWSTR filename = FUNC1(inf);
    DWORD total_size = FUNC0(SP_INF_INFORMATION, VersionData)
                        + (FUNC4(filename) + 1) * sizeof(WCHAR);

    if (required) *required = total_size;

    /* FIXME: we need to parse the INF file to find the correct version info */
    if (buffer)
    {
        if (size < total_size)
        {
            FUNC2(ERROR_INSUFFICIENT_BUFFER);
            return FALSE;
        }
        buffer->InfStyle = INF_STYLE_WIN4;
        buffer->InfCount = 1;
        /* put the filename in buffer->VersionData */
        FUNC3((LPWSTR)&buffer->VersionData[0], filename);
    }
    return TRUE;
}