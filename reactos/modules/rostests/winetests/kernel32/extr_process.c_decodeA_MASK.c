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
 int FUNC0 (char const) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char*    FUNC3(const char* str)
{
    char*       ptr;
    size_t      len,i;

    len = FUNC2(str) / 2;
    if (!len--) return NULL;
    ptr = FUNC1(len + 1);
    for (i = 0; i < len; i++)
        ptr[i] = (FUNC0(str[2 * i]) << 4) | FUNC0(str[2 * i + 1]);
    ptr[len] = '\0';
    return ptr;
}