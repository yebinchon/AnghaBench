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
typedef  int /*<<< orphan*/  MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(MSIPACKAGE *package, WCHAR *src, WCHAR *dst,
 size_t len)
{
    WCHAR *ptr, *deformatted;

    if (!src || !dst || !len)
    {
        if (dst) *dst = '\0';
        return;
    }

    dst[0] = '\0';

    /* Ignore the short portion of the path */
    if ((ptr = FUNC4(src, '|')))
        ptr++;
    else
        ptr = src;

    FUNC0(package, ptr, &deformatted);
    if (!deformatted || FUNC5(deformatted) > len - 1)
    {
        FUNC3(deformatted);
        return;
    }

    FUNC1(dst, deformatted);
    dst[FUNC2(deformatted)] = '\0';
    FUNC3(deformatted);
}