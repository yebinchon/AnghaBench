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
typedef  int /*<<< orphan*/  sbchr00 ;
typedef  int /*<<< orphan*/  sbchr0 ;
typedef  int /*<<< orphan*/  sb2 ;
typedef  int /*<<< orphan*/  sb1 ;
typedef  char WCHAR ;
typedef  scalar_t__ LCID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARCMP_EQ ; 
 int /*<<< orphan*/  VARCMP_GT ; 
 int /*<<< orphan*/  VARCMP_LT ; 

__attribute__((used)) static void FUNC8(void)
{
    LCID lcid;
    HRESULT hres;
    static const WCHAR sz[] = {'W','u','r','s','c','h','t','\0'};
    static const WCHAR szempty[] = {'\0'};
    static const WCHAR sz1[] = { 'a',0 };
    static const WCHAR sz2[] = { 'A',0 };
    static const WCHAR s1[] = { 'a',0 };
    static const WCHAR s2[] = { 'a',0,'b' };
    static const char sb1[] = {1,0,1};
    static const char sb2[] = {1,0,2};
    static const char sbchr0[] = {0,0};
    static const char sbchr00[] = {0,0,0};
    BSTR bstr, bstrempty, bstr2;

    lcid = FUNC2(FUNC1(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);
    bstr = FUNC3(sz);
    bstrempty = FUNC3(szempty);
    
    /* NULL handling. Yepp, MSDN is totally wrong here */
    FUNC7(NULL,NULL,0,VARCMP_EQ);
    FUNC7(bstr,NULL,0,VARCMP_GT);
    FUNC7(NULL,bstr,0,VARCMP_LT);

    /* NULL and empty string comparisons */
    FUNC7(bstrempty,NULL,0,VARCMP_EQ);
    FUNC7(NULL,bstrempty,0,VARCMP_EQ);

    FUNC6(bstr);
    bstr = FUNC3(sz1);

    bstr2 = FUNC3(sz2);
    FUNC7(bstr,bstr2,0,VARCMP_LT);
    FUNC7(bstr,bstr2,NORM_IGNORECASE,VARCMP_EQ);
    FUNC6(bstr2);
    /* These two strings are considered equal even though one is
     * NULL-terminated and the other not.
     */
    bstr2 = FUNC5(s1, FUNC0(s1));
    FUNC7(bstr,bstr2,0,VARCMP_EQ);
    FUNC6(bstr2);

    /* These two strings are not equal */
    bstr2 = FUNC5(s2, FUNC0(s2));
    FUNC7(bstr,bstr2,0,VARCMP_LT);
    FUNC6(bstr2);

    FUNC6(bstr);

    bstr = FUNC4(sbchr0, sizeof(sbchr0));
    bstr2 = FUNC4(sbchr00, sizeof(sbchr00));
    FUNC7(bstr,bstrempty,0,VARCMP_GT);
    FUNC7(bstrempty,bstr,0,VARCMP_LT);
    FUNC7(bstr2,bstrempty,0,VARCMP_GT);
    FUNC7(bstr2,bstr,0,VARCMP_EQ);
    FUNC6(bstr2);
    FUNC6(bstr);

    /* When (LCID == 0) it should be a binary comparison
     * so these two strings could not match.
     */
    bstr = FUNC4(sb1, sizeof(sb1));
    bstr2 = FUNC4(sb2, sizeof(sb2));
    lcid = 0;
    FUNC7(bstr,bstr2,0,VARCMP_LT);
    FUNC6(bstr2);
    FUNC6(bstr);

    bstr = FUNC4(sbchr0, sizeof(sbchr0));
    bstr2 = FUNC4(sbchr00, sizeof(sbchr00));
    FUNC7(bstr,bstrempty,0,VARCMP_GT);
    FUNC7(bstrempty,bstr,0,VARCMP_LT);
    FUNC7(bstr2,bstrempty,0,VARCMP_GT);
    FUNC7(bstr2,bstr,0,VARCMP_GT);
    FUNC6(bstr2);
    FUNC6(bstr);
    FUNC6(bstrempty);
}