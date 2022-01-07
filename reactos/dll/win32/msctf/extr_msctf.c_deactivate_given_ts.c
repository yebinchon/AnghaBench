
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pITfThreadMgrEx; int * pITfTextInputProcessor; } ;
typedef int HRESULT ;
typedef TYPE_1__ ActivatedTextService ;


 int ITfTextInputProcessor_Deactivate (int *) ;
 int ITfTextInputProcessor_Release (int *) ;
 int ITfThreadMgrEx_Release (int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT deactivate_given_ts(ActivatedTextService *actsvr)
{
    HRESULT hr = S_OK;

    if (actsvr->pITfTextInputProcessor)
    {
        hr = ITfTextInputProcessor_Deactivate(actsvr->pITfTextInputProcessor);
        ITfTextInputProcessor_Release(actsvr->pITfTextInputProcessor);
        ITfThreadMgrEx_Release(actsvr->pITfThreadMgrEx);
        actsvr->pITfTextInputProcessor = ((void*)0);
        actsvr->pITfThreadMgrEx = ((void*)0);
    }

    return hr;
}
