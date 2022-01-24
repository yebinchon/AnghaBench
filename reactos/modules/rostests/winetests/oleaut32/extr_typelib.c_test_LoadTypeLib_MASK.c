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
typedef  void ITypeLib ;
typedef  void* HRESULT ;

/* Variables and functions */
 void* E_INVALIDARG ; 
 void* FUNC0 (char const*,void**) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  REGKIND_NONE ; 
 void* TYPE_E_CANTLOADLIBRARY ; 
 int /*<<< orphan*/  FUNC2 (int,char*,void*) ; 

__attribute__((used)) static void FUNC3(void)
{
    ITypeLib *tl;
    HRESULT hres;

    static const WCHAR kernel32_dllW[] = {'k','e','r','n','e','l','3','2','.','d','l','l',0};

    hres = FUNC0(kernel32_dllW, &tl);
    FUNC2(hres == TYPE_E_CANTLOADLIBRARY, "LoadTypeLib returned: %08x, expected TYPE_E_CANTLOADLIBRARY\n", hres);

    hres = FUNC0(NULL, NULL);
    FUNC2(hres == E_INVALIDARG, "Got %#x.\n", hres);

    tl = (void *)0xdeadbeef;
    hres = FUNC0(NULL, &tl);
    FUNC2(hres == E_INVALIDARG, "Got %#x.\n", hres);
    FUNC2(tl == (void *)0xdeadbeef, "Got %p.\n", tl);

    hres = FUNC1(NULL, REGKIND_NONE, NULL);
    FUNC2(hres == E_INVALIDARG, "Got %#x.\n", hres);

    tl = (void *)0xdeadbeef;
    hres = FUNC1(NULL, REGKIND_NONE, &tl);
    FUNC2(hres == E_INVALIDARG, "Got %#x.\n", hres);
    FUNC2(tl == (void *)0xdeadbeef, "Got %p.\n", tl);
}