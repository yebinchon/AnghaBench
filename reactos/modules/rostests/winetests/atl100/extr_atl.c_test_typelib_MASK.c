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
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HINSTANCE ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(void)
{
    ITypeLib *typelib;
    HINSTANCE inst;
    size_t len;
    BSTR path;
    HRESULT hres;

    static const WCHAR scrrun_dll_suffixW[] = {'\\','s','c','r','r','u','n','.','d','l','l',0};
    static const WCHAR mshtml_tlb_suffixW[] = {'\\','m','s','h','t','m','l','.','t','l','b',0};

    inst = FUNC4("scrrun.dll");
    FUNC8(inst != NULL, "Could not load scrrun.dll\n");

    typelib = NULL;
    hres = FUNC1(inst, NULL, &path, &typelib);
    FUNC8(hres == S_OK, "AtlLoadTypeLib failed: %08x\n", hres);
    FUNC2(inst);

    len = FUNC6(path);
    FUNC8(len > FUNC0(scrrun_dll_suffixW)
       && FUNC7(path+len-FUNC0(scrrun_dll_suffixW), scrrun_dll_suffixW),
       "unexpected path %s\n", FUNC9(path));
    FUNC5(path);
    FUNC8(typelib != NULL, "typelib == NULL\n");
    FUNC3(typelib);

    inst = FUNC4("mshtml.dll");
    FUNC8(inst != NULL, "Could not load mshtml.dll\n");

    typelib = NULL;
    hres = FUNC1(inst, NULL, &path, &typelib);
    FUNC8(hres == S_OK, "AtlLoadTypeLib failed: %08x\n", hres);
    FUNC2(inst);

    len = FUNC6(path);
    FUNC8(len > FUNC0(mshtml_tlb_suffixW)
       && FUNC7(path+len-FUNC0(mshtml_tlb_suffixW), mshtml_tlb_suffixW),
       "unexpected path %s\n", FUNC9(path));
    FUNC5(path);
    FUNC8(typelib != NULL, "typelib == NULL\n");
    FUNC3(typelib);
}