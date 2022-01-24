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
typedef  char WCHAR ;

/* Variables and functions */
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static WCHAR*   FUNC3(const char* str)
{
    size_t      len;
    WCHAR*      ptr;
    int         i;

    len = FUNC2(str) / 4;
    if (!len--) return NULL;
    ptr = (WCHAR*)FUNC1(len * 2 + 1);
    for (i = 0; i < len; i++)
        ptr[i] = (FUNC0(str[4 * i]) << 12) |
            (FUNC0(str[4 * i + 1]) << 8) |
            (FUNC0(str[4 * i + 2]) << 4) |
            (FUNC0(str[4 * i + 3]) << 0);
    ptr[len] = '\0';
    return ptr;
}