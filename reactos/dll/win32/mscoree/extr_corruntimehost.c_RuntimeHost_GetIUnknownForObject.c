
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mono; } ;
struct TYPE_4__ {scalar_t__ (* mono_object_unbox ) (int *) ;int * (* mono_runtime_invoke ) (int *,int *,void**,int *) ;int * (* mono_class_get_method_from_name ) (int *,char*,int) ;int * (* mono_class_from_name ) (int *,char*,char*) ;int * (* mono_assembly_get_image ) (int *) ;int * (* mono_domain_assembly_open ) (int *,char*) ;int * (* mono_object_get_domain ) (int *) ;} ;
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
 int S_OK ;
 int * stub1 (int *) ;
 int * stub2 (int *,char*) ;
 int * stub3 (int *) ;
 int * stub4 (int *,char*,char*) ;
 int * stub5 (int *,char*,int) ;
 int * stub6 (int *,int *,void**,int *) ;
 scalar_t__ stub7 (int *) ;

HRESULT RuntimeHost_GetIUnknownForObject(RuntimeHost *This, MonoObject *obj,
    IUnknown **ppUnk)
{
    MonoDomain *domain;
    MonoAssembly *assembly;
    MonoImage *image;
    MonoClass *klass;
    MonoMethod *method;
    MonoObject *result;
    void *args[2];

    domain = This->mono->mono_object_get_domain(obj);

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

    klass = This->mono->mono_class_from_name(image, "System.Runtime.InteropServices", "Marshal");
    if (!klass)
    {
        ERR("Couldn't get class from image\n");
        return E_FAIL;
    }

    method = This->mono->mono_class_get_method_from_name(klass, "GetIUnknownForObject", 1);
    if (!method)
    {
        ERR("Couldn't get method from class\n");
        return E_FAIL;
    }

    args[0] = obj;
    args[1] = ((void*)0);
    result = This->mono->mono_runtime_invoke(method, ((void*)0), args, ((void*)0));
    if (!result)
    {
        ERR("Couldn't get result pointer\n");
        return E_FAIL;
    }

    *ppUnk = *(IUnknown**)This->mono->mono_object_unbox(result);
    if (!*ppUnk)
    {
        ERR("GetIUnknownForObject returned 0\n");
        return E_FAIL;
    }

    return S_OK;
}
