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
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_IWshRuntimeLibrary ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ typelib ; 

__attribute__((used)) static HRESULT FUNC5(void)
{
    HRESULT hres;
    ITypeLib *tl;

    if(typelib)
        return S_OK;

    hres = FUNC4(&LIBID_IWshRuntimeLibrary, 1, 0, LOCALE_SYSTEM_DEFAULT, &tl);
    if(FUNC1(hres)) {
        FUNC0("LoadRegTypeLib failed: %08x\n", hres);
        return hres;
    }

    if(FUNC3((void**)&typelib, tl, NULL))
        FUNC2(tl);
    return hres;
}