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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPSTR FUNC4(LPCSTR p)
{
    LPSTR ret;
    DWORD len = (FUNC3(p) + 1);
    ret = FUNC1(FUNC0(), 0, len);
    FUNC2(ret, p, len);
    return ret;
}