
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Size; int VirtualAddress; } ;
typedef TYPE_1__ IMAGE_DATA_DIRECTORY ;
typedef int ASSEMBLY ;


 void* assembly_rva_to_va (int *,int ) ;

__attribute__((used)) static ULONG assembly_datadir_get_data(ASSEMBLY *assembly,
    IMAGE_DATA_DIRECTORY *datadir, void **data)
{
    if (!datadir->VirtualAddress || !datadir->Size)
    {
        *data = ((void*)0);
        return 0;
    }
    else
    {
        *data = assembly_rva_to_va(assembly, datadir->VirtualAddress);
        return datadir->Size;
    }
}
