
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clsid; } ;
struct TYPE_5__ {int * pITfThreadMgrEx; int * pITfTextInputProcessor; int tid; TYPE_1__ LanguageProfile; } ;
typedef int ITfThreadMgrEx ;
typedef int ITfThreadMgr ;
typedef int HRESULT ;
typedef TYPE_2__ ActivatedTextService ;


 int CLSCTX_INPROC_SERVER ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (int ) ;
 int IID_ITfTextInputProcessor ;
 int ITfTextInputProcessor_Activate (int *,int *,int ) ;
 int ITfTextInputProcessor_Release (int *) ;
 int ITfThreadMgrEx_AddRef (int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT activate_given_ts(ActivatedTextService *actsvr, ITfThreadMgrEx *tm)
{
    HRESULT hr;


    if (actsvr->pITfTextInputProcessor)
        return S_OK;

    hr = CoCreateInstance (&actsvr->LanguageProfile.clsid, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_ITfTextInputProcessor, (void**)&actsvr->pITfTextInputProcessor);
    if (FAILED(hr)) return hr;

    hr = ITfTextInputProcessor_Activate(actsvr->pITfTextInputProcessor, (ITfThreadMgr *)tm, actsvr->tid);
    if (FAILED(hr))
    {
        ITfTextInputProcessor_Release(actsvr->pITfTextInputProcessor);
        actsvr->pITfTextInputProcessor = ((void*)0);
        return hr;
    }

    actsvr->pITfThreadMgrEx = tm;
    ITfThreadMgrEx_AddRef(tm);
    return hr;
}
