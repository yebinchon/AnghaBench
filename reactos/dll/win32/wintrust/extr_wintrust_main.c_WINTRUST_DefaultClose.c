
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* hWVTStateData; } ;
typedef TYPE_2__ WINTRUST_DATA ;
struct TYPE_7__ {TYPE_3__* pPDSip; } ;
struct TYPE_9__ {struct TYPE_9__* psPfns; TYPE_1__ u; struct TYPE_9__* padwTrustStepErrors; int (* pfnCleanupPolicy ) (TYPE_3__*) ;} ;
typedef int LONG ;
typedef int HWND ;
typedef int GUID ;
typedef int DWORD ;
typedef TYPE_3__ CRYPT_PROVIDER_DATA ;


 int ERROR_SUCCESS ;
 int TRACE (char*,int ,...) ;
 int WINTRUST_Free (TYPE_3__*) ;
 int debugstr_guid (int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static LONG WINTRUST_DefaultClose(HWND hwnd, GUID *actionID,
 WINTRUST_DATA *data)
{
    DWORD err = ERROR_SUCCESS;
    CRYPT_PROVIDER_DATA *provData = data->hWVTStateData;

    TRACE("(%p, %s, %p)\n", hwnd, debugstr_guid(actionID), data);

    if (provData)
    {
        if (provData->psPfns->pfnCleanupPolicy)
            err = provData->psPfns->pfnCleanupPolicy(provData);

        WINTRUST_Free(provData->padwTrustStepErrors);
        WINTRUST_Free(provData->u.pPDSip);
        WINTRUST_Free(provData->psPfns);
        WINTRUST_Free(provData);
        data->hWVTStateData = ((void*)0);
    }
    TRACE("returning %08x\n", err);
    return err;
}
