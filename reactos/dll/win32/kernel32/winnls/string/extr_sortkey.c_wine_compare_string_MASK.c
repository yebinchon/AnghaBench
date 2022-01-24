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
 int NORM_IGNORECASE ; 
 int NORM_IGNORENONSPACE ; 
 int FUNC0 (int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 

int FUNC3(int flags, const WCHAR *str1, int len1,
                        const WCHAR *str2, int len2)
{
    int ret;

    ret = FUNC2(flags, str1, len1, str2, len2);
    if (!ret)
    {
        if (!(flags & NORM_IGNORENONSPACE))
            ret = FUNC1(flags, str1, len1, str2, len2);
        if (!ret && !(flags & NORM_IGNORECASE))
            ret = FUNC0(flags, str1, len1, str2, len2);
    }
    return ret;
}