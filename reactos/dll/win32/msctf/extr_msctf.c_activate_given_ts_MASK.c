#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  clsid; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pITfThreadMgrEx; int /*<<< orphan*/ * pITfTextInputProcessor; int /*<<< orphan*/  tid; TYPE_1__ LanguageProfile; } ;
typedef  int /*<<< orphan*/  ITfThreadMgrEx ;
typedef  int /*<<< orphan*/  ITfThreadMgr ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ ActivatedTextService ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_ITfTextInputProcessor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC5(ActivatedTextService *actsvr, ITfThreadMgrEx *tm)
{
    HRESULT hr;

    /* Already Active? */
    if (actsvr->pITfTextInputProcessor)
        return S_OK;

    hr = FUNC0 (&actsvr->LanguageProfile.clsid, NULL, CLSCTX_INPROC_SERVER,
        &IID_ITfTextInputProcessor, (void**)&actsvr->pITfTextInputProcessor);
    if (FUNC1(hr)) return hr;

    hr = FUNC2(actsvr->pITfTextInputProcessor, (ITfThreadMgr *)tm, actsvr->tid);
    if (FUNC1(hr))
    {
        FUNC3(actsvr->pITfTextInputProcessor);
        actsvr->pITfTextInputProcessor = NULL;
        return hr;
    }

    actsvr->pITfThreadMgrEx = tm;
    FUNC4(tm);
    return hr;
}