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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static WCHAR *FUNC2(const char *str)
{
    WCHAR *ret;
    int len;

    if (!str || !str[0])
        return NULL;

    len = FUNC0(CP_ACP, 0, str, -1, NULL, 0);
    if(!len || len < 0)
        return NULL;

    ret = FUNC1(len * sizeof(WCHAR));
    if(!ret)
        return NULL;

    FUNC0(CP_ACP, 0, str, -1, ret, len);
    return ret;
}