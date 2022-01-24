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
typedef  int /*<<< orphan*/ * HRSRC ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC5(const char *name, const char *type, const char **ret)
{
    const char *res;
    HRSRC src;
    DWORD size;

    src = FUNC0(NULL, name, type);
    FUNC4(src != NULL, "Could not find resource %s: %u\n", name, FUNC1());
    if(!src)
        return 0;

    res = FUNC2(NULL, src);
    size = FUNC3(NULL, src);
    while(size && !res[size-1])
        size--;

    *ret = res;
    return size;
}