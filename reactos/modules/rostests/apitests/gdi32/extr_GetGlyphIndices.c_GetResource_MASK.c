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
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/ * LPDWORD ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRSRC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ RT_RCDATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPVOID FUNC5(LPCWSTR FontName, LPDWORD Size)
{
    HRSRC hRsrc;
    LPVOID Data;

    hRsrc = FUNC0(FUNC1(NULL), FontName, (LPCWSTR)RT_RCDATA);
    if (!hRsrc) return NULL;

    Data = FUNC3(FUNC2(FUNC1(NULL), hRsrc));
    if (!Data) return NULL;

    *Size = FUNC4(FUNC1(NULL), hRsrc);
    if (*Size == 0) return NULL;

    return Data;
}