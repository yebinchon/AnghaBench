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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FR_PRIVATE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC2(LPWSTR TempFile)
{
    if (FUNC1(L"ReactOSTestTahoma.ttf", TempFile))
    {
        if (FUNC0(TempFile, FR_PRIVATE, 0) > 0)
        {
            return TRUE;
        }
    }

    return FALSE;
}