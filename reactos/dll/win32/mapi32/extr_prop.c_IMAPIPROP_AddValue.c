
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int (* lpFree ) (TYPE_1__*) ;int ulNumValues; int values; int lpMore; int (* lpAlloc ) (int,TYPE_1__**) ;} ;
struct TYPE_13__ {struct TYPE_13__* value; int entry; int ulAccess; } ;
typedef int SPropValue ;
typedef TYPE_1__* LPVOID ;
typedef int LPSPropValue ;
typedef TYPE_1__* LPIPropDataItem ;
typedef TYPE_1__ IPropDataItem ;
typedef TYPE_4__ IPropDataImpl ;
typedef int HRESULT ;


 int IPROP_READWRITE ;
 int PropCopyMore (TYPE_1__*,int ,int ,TYPE_1__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int list_add_tail (int *,int *) ;
 int stub1 (int,TYPE_1__**) ;
 int stub2 (int,TYPE_1__**) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*) ;

__attribute__((used)) static IPropDataItem *IMAPIPROP_AddValue(IPropDataImpl *This,
                                         LPSPropValue lpProp)
{
    LPVOID lpMem;
    LPIPropDataItem lpNew;
    HRESULT hRet;

    hRet = This->lpAlloc(sizeof(IPropDataItem), &lpMem);

    if (SUCCEEDED(hRet))
    {
        lpNew = lpMem;
        lpNew->ulAccess = IPROP_READWRITE;


        lpMem = ((void*)0);
        hRet = This->lpAlloc(sizeof(SPropValue), &lpMem);
        if (SUCCEEDED(hRet))
        {
            lpNew->value = lpMem;

            hRet = PropCopyMore(lpNew->value, lpProp, This->lpMore, lpMem);
            if (SUCCEEDED(hRet))
            {
                list_add_tail(&This->values, &lpNew->entry);
                This->ulNumValues++;
                return lpNew;
            }
            This->lpFree(lpNew->value);
        }
        This->lpFree(lpNew);
    }
    return ((void*)0);
}
