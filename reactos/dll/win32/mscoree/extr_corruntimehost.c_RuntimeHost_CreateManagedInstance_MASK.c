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
struct TYPE_5__ {int /*<<< orphan*/  (* mono_runtime_object_init ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_object_new ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_class_from_mono_type ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* mono_reflection_type_from_name ) (char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* mono_thread_attach ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ RuntimeHost ;
typedef  int /*<<< orphan*/  MonoType ;
typedef  int /*<<< orphan*/  MonoObject ;
typedef  int /*<<< orphan*/  MonoDomain ;
typedef  int /*<<< orphan*/  MonoClass ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

HRESULT FUNC12(RuntimeHost *This, LPCWSTR name,
    MonoDomain *domain, MonoObject **result)
{
    HRESULT hr=S_OK;
    char *nameA=NULL;
    MonoType *type;
    MonoClass *klass;
    MonoObject *obj;

    if (!domain)
        hr = FUNC3(This, &domain);

    if (FUNC4(hr))
    {
        nameA = FUNC5(name);
        if (!nameA)
            hr = E_OUTOFMEMORY;
    }

    if (FUNC4(hr))
    {
        This->mono->mono_thread_attach(domain);

        type = This->mono->mono_reflection_type_from_name(nameA, NULL);
        if (!type)
        {
            FUNC0("Cannot find type %s\n", FUNC6(name));
            hr = E_FAIL;
        }
    }

    if (FUNC4(hr))
    {
        klass = This->mono->mono_class_from_mono_type(type);
        if (!klass)
        {
            FUNC0("Cannot convert type %s to a class\n", FUNC6(name));
            hr = E_FAIL;
        }
    }

    if (FUNC4(hr))
    {
        obj = This->mono->mono_object_new(domain, klass);
        if (!obj)
        {
            FUNC0("Cannot allocate object of type %s\n", FUNC6(name));
            hr = E_FAIL;
        }
    }

    if (FUNC4(hr))
    {
        /* FIXME: Detect exceptions from the constructor? */
        This->mono->mono_runtime_object_init(obj);
        *result = obj;
    }

    FUNC2(FUNC1(), 0, nameA);

    return hr;
}