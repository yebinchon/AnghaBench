
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int VARIANT ;
typedef int ULONG ;
struct TYPE_8__ {int hreftype; TYPE_2__* lpadesc; } ;
struct TYPE_9__ {int vt; TYPE_3__ u; } ;
struct TYPE_7__ {int cDims; TYPE_4__ tdescElem; TYPE_1__* rgbounds; } ;
struct TYPE_6__ {int cElements; } ;
typedef TYPE_4__ TYPEDESC ;
typedef int SYSKIND ;
typedef int ITypeInfoImpl ;
typedef int HRESULT ;
typedef int DECIMAL ;
typedef int DATE ;
typedef int CY ;


 int E_FAIL ;
 int FAILED (int ) ;
 int FIXME (char*,int) ;
 int SYS_WIN32 ;
 int S_OK ;
 int TLB_get_size_from_hreftype (int *,int ,int*,int*) ;
 int get_ptr_size (int ) ;

__attribute__((used)) static HRESULT TLB_size_instance(ITypeInfoImpl *info, SYSKIND sys,
        TYPEDESC *tdesc, ULONG *size, WORD *align)
{
    ULONG i, sub, ptr_size;
    HRESULT hr;

    ptr_size = get_ptr_size(sys);

    switch(tdesc->vt){
    case 128:
        *size = 0;
        break;
    case 147:
    case 136:
        *size = 1;
        break;
    case 146:
    case 156:
    case 135:
        *size = 2;
        break;
    case 145:
    case 139:
    case 149:
    case 134:
    case 143:
    case 132:
    case 148:
        *size = 4;
        break;
    case 138:
    case 144:
    case 133:
        *size = 8;
        break;
    case 155:
    case 150:
    case 131:
    case 140:
    case 137:
    case 142:
    case 141:
        *size = ptr_size;
        break;
    case 152:
        *size = sizeof(DATE);
        break;
    case 129:
        *size = sizeof(VARIANT);




        break;
    case 151:
        *size = sizeof(DECIMAL);
        break;
    case 153:
        *size = sizeof(CY);
        break;
    case 154:
        *size = 0;
        for(i = 0; i < tdesc->u.lpadesc->cDims; ++i)
            *size += tdesc->u.lpadesc->rgbounds[i].cElements;
        hr = TLB_size_instance(info, sys, &tdesc->u.lpadesc->tdescElem, &sub, align);
        if(FAILED(hr))
            return hr;
        *size *= sub;
        return S_OK;
    case 130:
        return TLB_get_size_from_hreftype(info, tdesc->u.hreftype, size, align);
    default:
        FIXME("Unsized VT: 0x%x\n", tdesc->vt);
        return E_FAIL;
    }

    if(align){
        if(*size < 4)
            *align = *size;
        else
            *align = 4;
    }

    return S_OK;
}
