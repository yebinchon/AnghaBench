
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__ arraydesc_seg; } ;
typedef TYPE_3__ WMSFT_TLBFile ;
typedef int USHORT ;
struct TYPE_11__ {int cDims; TYPE_2__* rgbounds; int tdescElem; } ;
struct TYPE_9__ {int cElements; int lLbound; } ;
typedef int DWORD ;
typedef TYPE_4__ ARRAYDESC ;


 int WMSFT_append_typedesc (int *,TYPE_3__*,int *,int *) ;
 scalar_t__ heap_alloc (int) ;
 scalar_t__ heap_realloc (scalar_t__,int) ;

__attribute__((used)) static DWORD WMSFT_append_arraydesc(ARRAYDESC *desc, WMSFT_TLBFile *file)
{
    DWORD offs = file->arraydesc_seg.len;
    DWORD *encoded;
    USHORT i;





    file->arraydesc_seg.len += (2 + desc->cDims * 2) * sizeof(DWORD);
    if(!file->arraydesc_seg.data)
        file->arraydesc_seg.data = heap_alloc(file->arraydesc_seg.len);
    else
        file->arraydesc_seg.data = heap_realloc(file->arraydesc_seg.data, file->arraydesc_seg.len);
    encoded = (DWORD*)((char *)file->arraydesc_seg.data + offs);

    encoded[0] = WMSFT_append_typedesc(&desc->tdescElem, file, ((void*)0), ((void*)0));
    encoded[1] = desc->cDims | ((desc->cDims * 2 * sizeof(DWORD)) << 16);
    for(i = 0; i < desc->cDims; ++i){
        encoded[2 + i * 2] = desc->rgbounds[i].cElements;
        encoded[2 + i * 2 + 1] = desc->rgbounds[i].lLbound;
    }

    return offs;
}
