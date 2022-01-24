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
typedef  int /*<<< orphan*/  decoded ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char* FUNC4(const char* str)
{
    static char decoded[1024];
    char*       ptr;
    size_t      len,i;

    len = FUNC3(str) / 2;
    if (!len--) return NULL;
    if (len >= sizeof(decoded))
    {
        FUNC2(stderr, "string is too long!\n");
        FUNC0(0);
    }
    ptr = decoded;
    for (i = 0; i < len; i++)
        ptr[i] = (FUNC1(str[2 * i]) << 4) | FUNC1(str[2 * i + 1]);
    ptr[len] = '\0';
    return ptr;
}