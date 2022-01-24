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

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 

char *FUNC3 (const char *str, size_t max)
{
    size_t len = FUNC2 (str, max);
    char *res = FUNC0 (len + 1);
    if (res)
    {
        FUNC1 (res, str, len);
        res[len] = '\0';
    }
    return res;
}