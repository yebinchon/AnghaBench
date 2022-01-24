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

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static WCHAR *FUNC2(const char *str)
{
    WCHAR *ret;
    int len;

    if(!str)
        return NULL;

    len = FUNC1(CP_ACP, 0, str, -1, NULL, 0);
    ret = FUNC0(len*sizeof(WCHAR));
    FUNC1(CP_ACP, 0, str, -1, ret, len);

    return ret;
}