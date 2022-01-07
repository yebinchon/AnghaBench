
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cs; scalar_t__ remunk_exported; } ;
typedef int STDOBJREF ;
typedef int IUnknown ;
typedef int IRemUnknown ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ APARTMENT ;


 int EnterCriticalSection (int *) ;
 int IID_IRemUnknown ;
 int IRemUnknown_Release (int *) ;
 int LeaveCriticalSection (int *) ;
 int MSHCTX_DIFFERENTMACHINE ;
 int MSHLFLAGSP_REMUNKNOWN ;
 int MSHLFLAGS_NORMAL ;
 scalar_t__ RemUnknown_Construct (int **) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 scalar_t__ marshal_object (TYPE_1__*,int *,int *,int *,int ,int *,int) ;

HRESULT start_apartment_remote_unknown(APARTMENT *apt)
{
    IRemUnknown *pRemUnknown;
    HRESULT hr = S_OK;

    EnterCriticalSection(&apt->cs);
    if (!apt->remunk_exported)
    {

        hr = RemUnknown_Construct(&pRemUnknown);
        if (hr == S_OK)
        {
            STDOBJREF stdobjref;

            hr = marshal_object(apt, &stdobjref, &IID_IRemUnknown, (IUnknown *)pRemUnknown, MSHCTX_DIFFERENTMACHINE, ((void*)0), MSHLFLAGS_NORMAL|MSHLFLAGSP_REMUNKNOWN);

            IRemUnknown_Release(pRemUnknown);
            if (hr == S_OK)
                apt->remunk_exported = TRUE;
        }
    }
    LeaveCriticalSection(&apt->cs);
    return hr;
}
