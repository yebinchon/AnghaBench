#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * member_0; } ;
struct unk_impl {int member_1; int ref; int /*<<< orphan*/  inner_unk; int /*<<< orphan*/  IUnknown_iface; int /*<<< orphan*/ * member_2; TYPE_1__ member_0; } ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPersistFile ;
typedef  int /*<<< orphan*/  IAVIFile ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_AVIFile ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int E_NOINTERFACE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAVIFile ; 
 int /*<<< orphan*/  IID_IAVIStream ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  unk_vtbl ; 

__attribute__((used)) static void FUNC10(void)
{
    struct unk_impl unk_obj = {unk_vtbl, 19, NULL};
    IAVIFile *avif = NULL;
    IPersistFile *pf;
    IUnknown *unk;
    LONG refcount;
    HRESULT hr;

    /* COM aggregation */
    hr = FUNC0(&CLSID_AVIFile, &unk_obj.IUnknown_iface, CLSCTX_INPROC_SERVER,
            &IID_IUnknown, (void**)&unk_obj.inner_unk);
    FUNC9(hr == S_OK, "COM aggregation failed: %08x, expected S_OK\n", hr);
    hr = FUNC7(&unk_obj.IUnknown_iface, &IID_IAVIFile, (void**)&avif);
    FUNC9(hr == S_OK, "QueryInterface for IID_IAVIFile failed: %08x\n", hr);
    refcount = FUNC1(avif);
    FUNC9(refcount == unk_obj.ref, "AVIFile just pretends to support COM aggregation\n");
    refcount = FUNC3(avif);
    FUNC9(refcount == unk_obj.ref, "AVIFile just pretends to support COM aggregation\n");
    hr = FUNC2(avif, &IID_IPersistFile, (void**)&pf);
    FUNC9(hr == S_OK, "QueryInterface for IID_IPersistFile failed: %08x\n", hr);
    refcount = FUNC5(pf);
    FUNC9(refcount == unk_obj.ref, "AVIFile just pretends to support COM aggregation\n");
    refcount = FUNC3(avif);
    FUNC9(refcount == 19, "Outer ref count should be back at 19 but is %d\n", refcount);
    refcount = FUNC8(unk_obj.inner_unk);
    FUNC9(refcount == 0, "Inner ref count should be 0 but is %u\n", refcount);

    /* Invalid RIID */
    hr = FUNC0(&CLSID_AVIFile, NULL, CLSCTX_INPROC_SERVER, &IID_IAVIStream,
            (void**)&avif);
    FUNC9(hr == E_NOINTERFACE, "AVIFile create failed: %08x, expected E_NOINTERFACE\n", hr);

    /* Same refcount */
    hr = FUNC0(&CLSID_AVIFile, NULL, CLSCTX_INPROC_SERVER, &IID_IAVIFile, (void**)&avif);
    FUNC9(hr == S_OK, "AVIFile create failed: %08x, expected S_OK\n", hr);
    refcount = FUNC1(avif);
    FUNC9(refcount == 2, "refcount == %u, expected 2\n", refcount);
    hr = FUNC2(avif, &IID_IUnknown, (void**)&unk);
    FUNC9(hr == S_OK, "QueryInterface for IID_IUnknown failed: %08x\n", hr);
    refcount = FUNC6(unk);
    FUNC9(refcount == 4, "refcount == %u, expected 4\n", refcount);
    hr = FUNC2(avif, &IID_IPersistFile, (void**)&pf);
    FUNC9(hr == S_OK, "QueryInterface for IID_IPersistFile failed: %08x\n", hr);
    refcount = FUNC4(pf);
    FUNC9(refcount == 6, "refcount == %u, expected 6\n", refcount);

    while (FUNC3(avif));
}