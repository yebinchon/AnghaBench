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
typedef  scalar_t__* LPCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__* BSTR ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 scalar_t__ FUNC2 (scalar_t__ const) ; 
 int FUNC3 (scalar_t__ const*) ; 

__attribute__((used)) static BSTR FUNC4(LPCWSTR uri) {
    const WCHAR *start, *end, *ptr;
    WCHAR *ptr2;
    DWORD len;
    BSTR ret;

    start = uri;
    /* Skip leading controls and whitespace. */
    while(*start && (FUNC1(*start) || FUNC2(*start))) ++start;

    /* URI consisted only of control/whitespace. */
    if(!*start)
        return FUNC0(NULL, 0);

    end = start + FUNC3(start);
    while(--end > start && (FUNC1(*end) || FUNC2(*end)));

    len = ++end - start;
    for(ptr = start; ptr < end; ptr++) {
        if(FUNC1(*ptr))
            len--;
    }

    ret = FUNC0(NULL, len);
    if(!ret)
        return NULL;

    for(ptr = start, ptr2=ret; ptr < end; ptr++) {
        if(!FUNC1(*ptr))
            *ptr2++ = *ptr;
    }

    return ret;
}