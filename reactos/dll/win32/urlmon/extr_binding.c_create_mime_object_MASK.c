#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  iid; int /*<<< orphan*/  callback; int /*<<< orphan*/  mime; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IMonikerProp ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  BINDING_OBJAVAIL ; 
 int /*<<< orphan*/  CLASSIDPROP ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IMonikerProp ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INET_E_CANNOT_INSTANTIATE_OBJECT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  MIMETYPEPROP ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(Binding *binding, const CLSID *clsid, LPCWSTR clsid_str)
{
    IPersistMoniker *persist;
    HRESULT hres;

    hres = FUNC0(clsid, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
                            &binding->iid, (void**)&binding->obj);
    if(FUNC1(hres)) {
        FUNC10("CoCreateInstance failed: %08x\n", hres);
        return INET_E_CANNOT_INSTANTIATE_OBJECT;
    }

    binding->state |= BINDING_OBJAVAIL;

    hres = FUNC8(binding->obj, &IID_IPersistMoniker, (void**)&persist);
    if(FUNC9(hres)) {
        IMonikerProp *prop;

        hres = FUNC6(persist, &IID_IMonikerProp, (void**)&prop);
        if(FUNC9(hres)) {
            FUNC4(prop, MIMETYPEPROP, binding->mime);
            FUNC4(prop, CLASSIDPROP, clsid_str);
            FUNC5(prop);
        }

        FUNC11(binding, persist);

        FUNC7(persist);
    }else {
        FUNC2("Could not get IPersistMoniker: %08x\n", hres);
        /* FIXME: Try query IPersistFile */
    }

    FUNC3(binding->callback, &binding->iid, binding->obj);

    return S_OK;
}