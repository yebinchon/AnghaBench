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
typedef  int /*<<< orphan*/  wine_prefixW ;
typedef  char WCHAR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char* BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

HRESULT FUNC4(LPCWSTR nsuri, BOOL ret_empty, BSTR *ret)
{
    const WCHAR *ptr = nsuri;

    static const WCHAR wine_prefixW[] = {'w','i','n','e',':'};

    if(!FUNC3(nsuri, wine_prefixW, sizeof(wine_prefixW)/sizeof(WCHAR)))
        ptr += sizeof(wine_prefixW)/sizeof(WCHAR);

    if(*ptr || ret_empty) {
        *ret = FUNC0(ptr);
        if(!*ret)
            return E_OUTOFMEMORY;
    }else {
        *ret = NULL;
    }

    FUNC1("%s -> %s\n", FUNC2(nsuri), FUNC2(*ret));
    return S_OK;
}