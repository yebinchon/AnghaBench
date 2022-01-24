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
typedef  int /*<<< orphan*/  aw ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CP_OEMCP ; 
 int FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static BOOL FUNC3(const char* a, const WCHAR* b, DWORD lenA, DWORD lenB)
{
    WCHAR       aw[1024];

    DWORD len = FUNC1( FUNC0() ? CP_ACP : CP_OEMCP, 0,
                                     a, lenA, aw, sizeof(aw) / sizeof(aw[0]) );
    if (len != lenB) return FALSE;
    return FUNC2(aw, b, len * sizeof(WCHAR)) == 0;
}