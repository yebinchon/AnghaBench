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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LPWSTR FUNC2(LPCSTR str)
{
    int size = FUNC1(CP_ACP, 0, str, -1, NULL, 0);
    LPWSTR wstr = FUNC0((size + 1)*sizeof(WCHAR));
    FUNC1(CP_ACP, 0, str, -1, wstr, size+1);
    return wstr;
}