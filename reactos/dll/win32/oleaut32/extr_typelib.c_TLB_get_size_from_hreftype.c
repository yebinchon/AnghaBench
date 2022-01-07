
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int ULONG ;
struct TYPE_7__ {int ITypeInfo2_iface; } ;
struct TYPE_6__ {int cbAlignment; int cbSizeInstance; } ;
typedef TYPE_1__ TYPEATTR ;
typedef TYPE_2__ ITypeInfoImpl ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef int HREFTYPE ;


 scalar_t__ FAILED (int ) ;
 int ITypeInfo2_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 int S_OK ;

__attribute__((used)) static HRESULT TLB_get_size_from_hreftype(ITypeInfoImpl *info, HREFTYPE href,
        ULONG *size, WORD *align)
{
    ITypeInfo *other;
    TYPEATTR *attr;
    HRESULT hr;

    hr = ITypeInfo2_GetRefTypeInfo(&info->ITypeInfo2_iface, href, &other);
    if(FAILED(hr))
        return hr;

    hr = ITypeInfo_GetTypeAttr(other, &attr);
    if(FAILED(hr)){
        ITypeInfo_Release(other);
        return hr;
    }

    if(size)
        *size = attr->cbSizeInstance;
    if(align)
        *align = attr->cbAlignment;

    ITypeInfo_ReleaseTypeAttr(other, attr);
    ITypeInfo_Release(other);

    return S_OK;
}
