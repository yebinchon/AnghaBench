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
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static const char* FUNC4(const WCHAR* str)
{
    char*       ptr;
    size_t      len,i;

    if (!str) return "";
    len = FUNC2(str) + 1;
    ptr = FUNC1(len * 4 + 1);
    FUNC0(ptr);
    for (i = 0; i < len; i++)
        FUNC3(&ptr[i * 4], "%04x", (unsigned int)(unsigned short)str[i]);
    ptr[4 * len] = '\0';
    return ptr;
}