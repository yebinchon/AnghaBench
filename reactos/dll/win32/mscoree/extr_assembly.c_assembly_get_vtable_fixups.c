
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VTableFixup ;
typedef int ULONG ;
struct TYPE_6__ {TYPE_1__* corhdr; } ;
struct TYPE_5__ {int VTableFixups; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ ASSEMBLY ;


 int S_OK ;
 int assembly_datadir_get_data (TYPE_2__*,int *,void**) ;

HRESULT assembly_get_vtable_fixups(ASSEMBLY *assembly, VTableFixup **fixups, DWORD *count)
{
    ULONG size;

    size = assembly_datadir_get_data(assembly, &assembly->corhdr->VTableFixups, (void**)fixups);
    *count = size / sizeof(VTableFixup);

    return S_OK;
}
