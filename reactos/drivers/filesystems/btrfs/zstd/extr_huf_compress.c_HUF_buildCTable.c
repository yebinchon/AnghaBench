
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int huffNodeTable ;
typedef int U32 ;
typedef int HUF_CElt ;


 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int HUFC_ALLOC_TAG ;
 size_t HUF_buildCTable_wksp (int *,int const*,int ,int ,int *,int) ;
 int NonPagedPool ;

size_t HUF_buildCTable (HUF_CElt* tree, const U32* count, U32 maxSymbolValue, U32 maxNbBits)
{
    huffNodeTable* nodeTable = ExAllocatePoolWithTag(NonPagedPool, sizeof(huffNodeTable), HUFC_ALLOC_TAG);
    size_t ret;

    if (!nodeTable)
        return 0;

    ret = HUF_buildCTable_wksp(tree, count, maxSymbolValue, maxNbBits, nodeTable, sizeof(huffNodeTable));

    ExFreePool(nodeTable);

    return ret;
}
