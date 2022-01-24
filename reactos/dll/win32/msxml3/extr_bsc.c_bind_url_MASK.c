#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_4__ IBindStatusCallback_iface; int /*<<< orphan*/  hres; int /*<<< orphan*/ * memstream; int /*<<< orphan*/ * binding; int /*<<< orphan*/  (* onDataAvailable ) (void*,char*,DWORD) ;void* obj; } ;
typedef  TYPE_1__ bsc_t ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  IID_IStream ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bsc_vtbl ; 
 TYPE_1__* FUNC9 (int) ; 

HRESULT FUNC10(IMoniker *mon, HRESULT (*onDataAvailable)(void*,char*,DWORD),
        void *obj, bsc_t **ret)
{
    bsc_t *bsc;
    IBindCtx *pbc;
    HRESULT hr;

    FUNC8("%p\n", mon);

    hr = FUNC0(0, &pbc);
    if(FUNC1(hr))
        return hr;

    bsc = FUNC9(sizeof(bsc_t));

    bsc->IBindStatusCallback_iface.lpVtbl = &bsc_vtbl;
    bsc->ref = 1;
    bsc->obj = obj;
    bsc->onDataAvailable = onDataAvailable;
    bsc->binding = NULL;
    bsc->memstream = NULL;
    bsc->hres = S_OK;

    hr = FUNC6(pbc, &bsc->IBindStatusCallback_iface, NULL, 0);
    if(FUNC7(hr))
    {
        IStream *stream;
        hr = FUNC4(mon, pbc, NULL, &IID_IStream, (LPVOID*)&stream);
        if(stream)
            FUNC5(stream);
        FUNC2(pbc);
    }

    if(FUNC1(hr))
    {
        FUNC3(&bsc->IBindStatusCallback_iface);
        bsc = NULL;
    }

    *ret = bsc;
    return hr;
}