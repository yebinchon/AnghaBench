
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int * default_domain; } ;
typedef TYPE_1__ RuntimeHost ;
typedef int MonoDomain ;
typedef int HRESULT ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int RuntimeHost_AddDomain (TYPE_1__*,int **) ;
 int S_OK ;

__attribute__((used)) static HRESULT RuntimeHost_GetDefaultDomain(RuntimeHost *This, MonoDomain **result)
{
    HRESULT res=S_OK;

    EnterCriticalSection(&This->lock);

    if (This->default_domain) goto end;

    res = RuntimeHost_AddDomain(This, &This->default_domain);

end:
    *result = This->default_domain;

    LeaveCriticalSection(&This->lock);

    return res;
}
