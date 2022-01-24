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
typedef  int /*<<< orphan*/  encoded ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned char) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static const char* FUNC4(const char* str)
{
    static char encoded[2*1024+1];
    char*       ptr;
    size_t      len,i;

    if (!str) return "";
    len = FUNC3(str) + 1;
    if (len >= sizeof(encoded)/2)
    {
        FUNC1(stderr, "string is too long!\n");
        FUNC0(0);
    }
    ptr = encoded;
    for (i = 0; i < len; i++)
        FUNC2(&ptr[i * 2], "%02x", (unsigned char)str[i]);
    ptr[2 * len] = '\0';
    return ptr;
}