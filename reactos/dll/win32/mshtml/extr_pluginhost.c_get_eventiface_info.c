
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ typekind; int cImplTypes; } ;
typedef TYPE_1__ TYPEATTR ;
typedef int ITypeInfo ;
typedef int HTMLPluginContainer ;
typedef int HRESULT ;
typedef int HREFTYPE ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IMPLTYPEFLAG_FDEFAULT ;
 int IMPLTYPEFLAG_FSOURCE ;
 int ITypeInfo_GetImplTypeFlags (int *,int,int*) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetRefTypeOfImplType (int *,int,int *) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 scalar_t__ TKIND_COCLASS ;
 int WARN (char*) ;

__attribute__((used)) static ITypeInfo *get_eventiface_info(HTMLPluginContainer *plugin_container, ITypeInfo *class_info)
{
    int impl_types, i, impl_flags;
    ITypeInfo *ret = ((void*)0);
    TYPEATTR *typeattr;
    HREFTYPE ref;
    HRESULT hres;

    hres = ITypeInfo_GetTypeAttr(class_info, &typeattr);
    if(FAILED(hres))
        return ((void*)0);

    if(typeattr->typekind != TKIND_COCLASS) {
        WARN("not coclass\n");
        ITypeInfo_ReleaseTypeAttr(class_info, typeattr);
        return ((void*)0);
    }

    impl_types = typeattr->cImplTypes;
    ITypeInfo_ReleaseTypeAttr(class_info, typeattr);

    for(i=0; i<impl_types; i++) {
        hres = ITypeInfo_GetImplTypeFlags(class_info, i, &impl_flags);
        if(FAILED(hres))
            continue;

        if((impl_flags & IMPLTYPEFLAG_FSOURCE)) {
            if(!(impl_flags & IMPLTYPEFLAG_FDEFAULT)) {
                FIXME("Handle non-default source iface\n");
                continue;
            }

            hres = ITypeInfo_GetRefTypeOfImplType(class_info, i, &ref);
            if(FAILED(hres))
                continue;

            hres = ITypeInfo_GetRefTypeInfo(class_info, ref, &ret);
            if(FAILED(hres))
                ret = ((void*)0);
        }
    }

    return ret;
}
