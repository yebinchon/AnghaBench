
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwValueLen; scalar_t__ lpValue; } ;
typedef TYPE_1__* PTHEME_PROPERTY ;
typedef int HRESULT ;


 int E_PROP_ID_UNSUPPORTED ;
 int MSSTYLES_GetNextInteger (scalar_t__,scalar_t__,int *,int*) ;
 int S_OK ;
 int TRACE (char*) ;

HRESULT MSSTYLES_GetPropertyInt(PTHEME_PROPERTY tp, int *piVal)
{
    if(!MSSTYLES_GetNextInteger(tp->lpValue, (tp->lpValue + tp->dwValueLen), ((void*)0), piVal)) {
        TRACE("Could not parse int property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    return S_OK;
}
