
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_1__ typeinfo_seg; } ;
typedef TYPE_2__ WMSFT_TLBFile ;
struct TYPE_10__ {scalar_t__ TypeInfoCount; } ;
struct TYPE_9__ {int memoffset; } ;
typedef TYPE_3__ MSFT_TypeInfoBase ;
typedef TYPE_4__ ITypeLibImpl ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int S_OK ;

__attribute__((used)) static HRESULT WMSFT_fixup_typeinfos(ITypeLibImpl *This, WMSFT_TLBFile *file,
        DWORD file_len)
{
    DWORD i;
    MSFT_TypeInfoBase *base = (MSFT_TypeInfoBase *)file->typeinfo_seg.data;

    for(i = 0; i < This->TypeInfoCount; ++i){
        base->memoffset += file_len;
        ++base;
    }

    return S_OK;
}
