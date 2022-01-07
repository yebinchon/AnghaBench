
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mono; } ;
struct TYPE_5__ {int * (* mono_runtime_invoke ) (int *,int *,void**,int *) ;int * (* mono_class_get_method_from_name ) (int *,char*,int ) ;int * (* mono_class_from_name ) (int *,char*,char*) ;int * (* mono_assembly_get_image ) (int *) ;int * (* mono_domain_assembly_open ) (int *,char*) ;int (* mono_thread_attach ) (int *) ;} ;
typedef TYPE_2__ RuntimeHost ;
typedef int MonoObject ;
typedef int MonoMethod ;
typedef int MonoImage ;
typedef int MonoDomain ;
typedef int MonoClass ;
typedef int MonoAssembly ;
typedef int IUnknown ;
typedef int HRESULT ;


 int ERR (char*) ;
 int E_FAIL ;
 int IID__AppDomain ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int RuntimeHost_GetIUnknownForObject (TYPE_2__*,int *,int **) ;
 scalar_t__ SUCCEEDED (int ) ;
 int stub1 (int *) ;
 int * stub2 (int *,char*) ;
 int * stub3 (int *) ;
 int * stub4 (int *,char*,char*) ;
 int * stub5 (int *,char*,int ) ;
 int * stub6 (int *,int *,void**,int *) ;

__attribute__((used)) static HRESULT RuntimeHost_GetIUnknownForDomain(RuntimeHost *This, MonoDomain *domain, IUnknown **punk)
{
    HRESULT hr;
    void *args[1];
    MonoAssembly *assembly;
    MonoImage *image;
    MonoClass *klass;
    MonoMethod *method;
    MonoObject *appdomain_object;
    IUnknown *unk;

    This->mono->mono_thread_attach(domain);

    assembly = This->mono->mono_domain_assembly_open(domain, "mscorlib");
    if (!assembly)
    {
        ERR("Cannot load mscorlib\n");
        return E_FAIL;
    }

    image = This->mono->mono_assembly_get_image(assembly);
    if (!image)
    {
        ERR("Couldn't get assembly image\n");
        return E_FAIL;
    }

    klass = This->mono->mono_class_from_name(image, "System", "AppDomain");
    if (!klass)
    {
        ERR("Couldn't get class from image\n");
        return E_FAIL;
    }

    method = This->mono->mono_class_get_method_from_name(klass, "get_CurrentDomain", 0);
    if (!method)
    {
        ERR("Couldn't get method from class\n");
        return E_FAIL;
    }

    args[0] = ((void*)0);
    appdomain_object = This->mono->mono_runtime_invoke(method, ((void*)0), args, ((void*)0));
    if (!appdomain_object)
    {
        ERR("Couldn't get result pointer\n");
        return E_FAIL;
    }

    hr = RuntimeHost_GetIUnknownForObject(This, appdomain_object, &unk);

    if (SUCCEEDED(hr))
    {
        hr = IUnknown_QueryInterface(unk, &IID__AppDomain, (void**)punk);

        IUnknown_Release(unk);
    }

    return hr;
}
