
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int guid; } ;
typedef TYPE_1__ TYPEATTR ;
typedef int ITypeInfo ;
typedef int HREFTYPE ;
typedef int GUID ;


 int IMPLTYPEFLAG_FDEFAULT ;
 int ITypeInfo_GetImplTypeFlags (int *,int,int*) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetRefTypeOfImplType (int *,int,int *) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;

__attribute__((used)) static void get_default_iface(ITypeInfo *typeinfo, WORD count, GUID *iid)
{
    ITypeInfo *refinfo;
    HREFTYPE reftype;
    TYPEATTR *attr;
    int flags, i;

    for (i = 0; i < count; ++i)
    {
        ITypeInfo_GetImplTypeFlags(typeinfo, i, &flags);
        if (flags & IMPLTYPEFLAG_FDEFAULT)
            break;
    }


    if (i == count)
        i = 0;

    ITypeInfo_GetRefTypeOfImplType(typeinfo, i, &reftype);
    ITypeInfo_GetRefTypeInfo(typeinfo, reftype, &refinfo);
    ITypeInfo_GetTypeAttr(refinfo, &attr);
    *iid = attr->guid;
    ITypeInfo_ReleaseTypeAttr(refinfo, attr);
    ITypeInfo_Release(refinfo);
}
