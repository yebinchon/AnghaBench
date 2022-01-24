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
typedef  int /*<<< orphan*/  IPersistStreamInit ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IPersistFile ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  IID_IPersistStreamInit ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC9(IHTMLDocument2 *doc, HRESULT exhres)
{
    IPersistStreamInit *perinit;
    IPersistMoniker *permon;
    IPersistFile *perfile;
    HRESULT hres;

    hres = FUNC0(doc, &IID_IPersistStreamInit, (void**)&perinit);
    FUNC8(hres == S_OK, "QueryInterface(IID_IPersistStreamInit failed: %08x\n", hres);
    if(FUNC7(hres)) {
        hres = FUNC5(perinit);
        FUNC8(hres == exhres, "IsDirty() = %08x, expected %08x\n", hres, exhres);
        FUNC6(perinit);
    }

    hres = FUNC0(doc, &IID_IPersistMoniker, (void**)&permon);
    FUNC8(hres == S_OK, "QueryInterface(IID_IPersistMoniker failed: %08x\n", hres);
    if(FUNC7(hres)) {
        hres = FUNC3(permon);
        FUNC8(hres == exhres, "IsDirty() = %08x, expected %08x\n", hres, exhres);
        FUNC4(permon);
    }

    hres = FUNC0(doc, &IID_IPersistFile, (void**)&perfile);
    FUNC8(hres == S_OK, "QueryInterface(IID_IPersistFile failed: %08x\n", hres);
    if(FUNC7(hres)) {
        hres = FUNC1(perfile);
        FUNC8(hres == exhres, "IsDirty() = %08x, expected %08x\n", hres, exhres);
        FUNC2(perfile);
    }
}