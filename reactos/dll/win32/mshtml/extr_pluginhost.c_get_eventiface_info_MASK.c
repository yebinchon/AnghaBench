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
struct TYPE_4__ {scalar_t__ typekind; int cImplTypes; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HTMLPluginContainer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IMPLTYPEFLAG_FDEFAULT ; 
 int IMPLTYPEFLAG_FSOURCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ TKIND_COCLASS ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static ITypeInfo *FUNC8(HTMLPluginContainer *plugin_container, ITypeInfo *class_info)
{
    int impl_types, i, impl_flags;
    ITypeInfo *ret = NULL;
    TYPEATTR *typeattr;
    HREFTYPE ref;
    HRESULT hres;

    hres = FUNC5(class_info, &typeattr);
    if(FUNC0(hres))
        return NULL;

    if(typeattr->typekind != TKIND_COCLASS) {
        FUNC7("not coclass\n");
        FUNC6(class_info, typeattr);
        return NULL;
    }

    impl_types = typeattr->cImplTypes;
    FUNC6(class_info, typeattr);

    for(i=0; i<impl_types; i++) {
        hres = FUNC2(class_info, i, &impl_flags);
        if(FUNC0(hres))
            continue;

        if((impl_flags & IMPLTYPEFLAG_FSOURCE)) {
            if(!(impl_flags & IMPLTYPEFLAG_FDEFAULT)) {
                FUNC1("Handle non-default source iface\n");
                continue;
            }

            hres = FUNC4(class_info, i, &ref);
            if(FUNC0(hres))
                continue;

            hres = FUNC3(class_info, ref, &ret);
            if(FUNC0(hres))
                ret = NULL;
        }
    }

    return ret;
}