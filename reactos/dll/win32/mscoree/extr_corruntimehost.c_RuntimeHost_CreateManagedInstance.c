
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mono; } ;
struct TYPE_5__ {int (* mono_runtime_object_init ) (int *) ;int * (* mono_object_new ) (int *,int *) ;int * (* mono_class_from_mono_type ) (int *) ;int * (* mono_reflection_type_from_name ) (char*,int *) ;int (* mono_thread_attach ) (int *) ;} ;
typedef TYPE_2__ RuntimeHost ;
typedef int MonoType ;
typedef int MonoObject ;
typedef int MonoDomain ;
typedef int MonoClass ;
typedef int LPCWSTR ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,char*) ;
 int RuntimeHost_GetDefaultDomain (TYPE_2__*,int **) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 char* WtoA (int ) ;
 int debugstr_w (int ) ;
 int stub1 (int *) ;
 int * stub2 (char*,int *) ;
 int * stub3 (int *) ;
 int * stub4 (int *,int *) ;
 int stub5 (int *) ;

HRESULT RuntimeHost_CreateManagedInstance(RuntimeHost *This, LPCWSTR name,
    MonoDomain *domain, MonoObject **result)
{
    HRESULT hr=S_OK;
    char *nameA=((void*)0);
    MonoType *type;
    MonoClass *klass;
    MonoObject *obj;

    if (!domain)
        hr = RuntimeHost_GetDefaultDomain(This, &domain);

    if (SUCCEEDED(hr))
    {
        nameA = WtoA(name);
        if (!nameA)
            hr = E_OUTOFMEMORY;
    }

    if (SUCCEEDED(hr))
    {
        This->mono->mono_thread_attach(domain);

        type = This->mono->mono_reflection_type_from_name(nameA, ((void*)0));
        if (!type)
        {
            ERR("Cannot find type %s\n", debugstr_w(name));
            hr = E_FAIL;
        }
    }

    if (SUCCEEDED(hr))
    {
        klass = This->mono->mono_class_from_mono_type(type);
        if (!klass)
        {
            ERR("Cannot convert type %s to a class\n", debugstr_w(name));
            hr = E_FAIL;
        }
    }

    if (SUCCEEDED(hr))
    {
        obj = This->mono->mono_object_new(domain, klass);
        if (!obj)
        {
            ERR("Cannot allocate object of type %s\n", debugstr_w(name));
            hr = E_FAIL;
        }
    }

    if (SUCCEEDED(hr))
    {

        This->mono->mono_runtime_object_init(obj);
        *result = obj;
    }

    HeapFree(GetProcessHeap(), 0, nameA);

    return hr;
}
