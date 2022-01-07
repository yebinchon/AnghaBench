
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int len; scalar_t__ data; } ;
struct TYPE_8__ {int * data; scalar_t__ len; } ;
struct TYPE_10__ {TYPE_2__ typeinfo_seg; TYPE_1__ aux_seg; } ;
typedef TYPE_3__ WMSFT_TLBFile ;
typedef size_t UINT ;
struct TYPE_11__ {size_t TypeInfoCount; int ** typeinfos; } ;
typedef TYPE_4__ ITypeLibImpl ;
typedef int ITypeInfoImpl ;
typedef int DWORD ;


 int WMSFT_compile_typeinfo (int *,size_t,TYPE_3__*,char*) ;
 scalar_t__ heap_alloc (int) ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static void WMSFT_compile_typeinfo_seg(ITypeLibImpl *This, WMSFT_TLBFile *file, DWORD *junk)
{
    UINT i;

    file->typeinfo_seg.len = 0;
    for(i = 0; i < This->TypeInfoCount; ++i){
        ITypeInfoImpl *info = This->typeinfos[i];
        *junk = file->typeinfo_seg.len;
        ++junk;
        file->typeinfo_seg.len += WMSFT_compile_typeinfo(info, i, ((void*)0), ((void*)0));
    }

    file->typeinfo_seg.data = heap_alloc(file->typeinfo_seg.len);
    memset(file->typeinfo_seg.data, 0x96, file->typeinfo_seg.len);

    file->aux_seg.len = 0;
    file->aux_seg.data = ((void*)0);

    file->typeinfo_seg.len = 0;
    for(i = 0; i < This->TypeInfoCount; ++i){
        ITypeInfoImpl *info = This->typeinfos[i];
        file->typeinfo_seg.len += WMSFT_compile_typeinfo(info, i, file,
                ((char *)file->typeinfo_seg.data) + file->typeinfo_seg.len);
    }
}
