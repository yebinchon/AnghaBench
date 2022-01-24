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
typedef  char* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char const* FUNC1 (char*) ; 
 char const* FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static WCHAR teststringW[] = {'a','b','r','a','c','a','d','a','b','r','a',0};
    static WCHAR emptyW[] = {0};
    static const WCHAR constemptyW[] = {0};

    if (0) /* crashes on native */
    {
        static const WCHAR conststringW[] = {'a','b','r','a','c','a','d','a','b','r','a',0};
        FUNC0(FUNC1((LPWSTR)conststringW) == conststringW, "p_wcslwr returned different string\n");
        FUNC0(FUNC2((LPWSTR)conststringW) == conststringW, "p_wcsupr returned different string\n");
        FUNC0(FUNC1(NULL) == NULL, "p_wcslwr didn't returned NULL\n");
        FUNC0(FUNC2(NULL) == NULL, "p_wcsupr didn't returned NULL\n");
    }
    FUNC0(FUNC1(teststringW) == teststringW, "p_wcslwr returned different string\n");
    FUNC0(FUNC2(teststringW) == teststringW, "p_wcsupr returned different string\n");
    FUNC0(FUNC1(emptyW) == emptyW, "p_wcslwr returned different string\n");
    FUNC0(FUNC2(emptyW) == emptyW, "p_wcsupr returned different string\n");
    FUNC0(FUNC1((LPWSTR)constemptyW) == constemptyW, "p_wcslwr returned different string\n");
    FUNC0(FUNC2((LPWSTR)constemptyW) == constemptyW, "p_wcsupr returned different string\n");
}