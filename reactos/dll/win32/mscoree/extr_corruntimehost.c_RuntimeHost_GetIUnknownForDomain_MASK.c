#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* mono; } ;
struct TYPE_5__ {int /*<<< orphan*/ * (* mono_runtime_invoke ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_class_get_method_from_name ) (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* mono_class_from_name ) (int /*<<< orphan*/ *,char*,char*) ;int /*<<< orphan*/ * (* mono_assembly_get_image ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_domain_assembly_open ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* mono_thread_attach ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ RuntimeHost ;
typedef  int /*<<< orphan*/  MonoObject ;
typedef  int /*<<< orphan*/  MonoMethod ;
typedef  int /*<<< orphan*/  MonoImage ;
typedef  int /*<<< orphan*/  MonoDomain ;
typedef  int /*<<< orphan*/  MonoClass ;
typedef  int /*<<< orphan*/  MonoAssembly ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  IID__AppDomain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(RuntimeHost *This, MonoDomain *domain, IUnknown **punk)
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
        FUNC0("Cannot load mscorlib\n");
        return E_FAIL;
    }

    image = This->mono->mono_assembly_get_image(assembly);
    if (!image)
    {
        FUNC0("Couldn't get assembly image\n");
        return E_FAIL;
    }

    klass = This->mono->mono_class_from_name(image, "System", "AppDomain");
    if (!klass)
    {
        FUNC0("Couldn't get class from image\n");
        return E_FAIL;
    }

    method = This->mono->mono_class_get_method_from_name(klass, "get_CurrentDomain", 0);
    if (!method)
    {
        FUNC0("Couldn't get method from class\n");
        return E_FAIL;
    }

    args[0] = NULL;
    appdomain_object = This->mono->mono_runtime_invoke(method, NULL, args, NULL);
    if (!appdomain_object)
    {
        FUNC0("Couldn't get result pointer\n");
        return E_FAIL;
    }

    hr = FUNC3(This, appdomain_object, &unk);

    if (FUNC4(hr))
    {
        hr = FUNC1(unk, &IID__AppDomain, (void**)punk);

        FUNC2(unk);
    }

    return hr;
}