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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static char *
FUNC2(const char *str, const char *token)
{
    int len = FUNC0(token);
    const char *p = str + FUNC0(str);

    while (str <= --p)
        if (p[0] == token[0] && FUNC1(p, token, len) == 0)
            return (char *)p;
    return NULL;
}