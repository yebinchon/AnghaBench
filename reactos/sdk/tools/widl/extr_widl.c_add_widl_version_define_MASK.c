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
typedef  int /*<<< orphan*/  version_str ;

/* Variables and functions */
 char* PACKAGE_VERSION ; 
 unsigned int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    unsigned int version;
    const char *p = PACKAGE_VERSION;

    /* major */
    version = FUNC0(p) * 0x10000;
    p = FUNC2(p, '.');

    /* minor */
    if (p)
    {
        version += FUNC0(p + 1) * 0x100;
        p = FUNC2(p + 1, '.');
    }

    /* build */
    if (p)
        version += FUNC0(p + 1);

    if (version != 0)
    {
        char version_str[11];
        FUNC1(version_str, sizeof(version_str), "0x%x", version);
        FUNC3("__WIDL__", version_str);
    }
    else
        FUNC3("__WIDL__", NULL);
}