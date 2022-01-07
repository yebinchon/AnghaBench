
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int data; } ;
struct TYPE_5__ {TYPE_1__ namehash_seg; } ;
typedef TYPE_2__ WMSFT_TLBFile ;
typedef int ITypeLibImpl ;


 int heap_alloc (int) ;
 int memset (int ,int,int) ;

__attribute__((used)) static void WMSFT_compile_namehash(ITypeLibImpl *This, WMSFT_TLBFile *file)
{
    file->namehash_seg.len = 0x200;
    file->namehash_seg.data = heap_alloc(file->namehash_seg.len);
    memset(file->namehash_seg.data, 0xFF, file->namehash_seg.len);
}
