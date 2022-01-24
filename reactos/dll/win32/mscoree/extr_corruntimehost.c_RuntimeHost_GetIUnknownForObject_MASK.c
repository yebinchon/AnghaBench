#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* mono; } ;
struct TYPE_4__ {scalar_t__ (* mono_object_unbox ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_runtime_invoke ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_class_get_method_from_name ) (int /*<<< orphan*/ *,char*,int) ;int /*<<< orphan*/ * (* mono_class_from_name ) (int /*<<< orphan*/ *,char*,char*) ;int /*<<< orphan*/ * (* mono_assembly_get_image ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_domain_assembly_open ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/ * (* mono_object_get_domain ) (int /*<<< orphan*/ *) ;} ;
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
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

HRESULT FUNC8(RuntimeHost *This, MonoObject *obj,
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
        FUNC0("Cannot load mscorlib\n");
        return E_FAIL;
    }

    image = This->mono->mono_assembly_get_image(assembly);
    if (!image)
    {
        FUNC0("Couldn't get assembly image\n");
        return E_FAIL;
    }

    klass = This->mono->mono_class_from_name(image, "System.Runtime.InteropServices", "Marshal");
    if (!klass)
    {
        FUNC0("Couldn't get class from image\n");
        return E_FAIL;
    }

    method = This->mono->mono_class_get_method_from_name(klass, "GetIUnknownForObject", 1);
    if (!method)
    {
        FUNC0("Couldn't get method from class\n");
        return E_FAIL;
    }

    args[0] = obj;
    args[1] = NULL;
    result = This->mono->mono_runtime_invoke(method, NULL, args, NULL);
    if (!result)
    {
        FUNC0("Couldn't get result pointer\n");
        return E_FAIL;
    }

    *ppUnk = *(IUnknown**)This->mono->mono_object_unbox(result);
    if (!*ppUnk)
    {
        FUNC0("GetIUnknownForObject returned 0\n");
        return E_FAIL;
    }

    return S_OK;
}