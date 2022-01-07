
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSE_FUNCTION_TYPE ;
typedef int FSE_CTable ;


 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePool (int *) ;
 int FSEC_ALLOC_TAG ;
 int FSE_MAX_TABLESIZE ;
 size_t FSE_buildCTable_wksp (int *,short const*,unsigned int,unsigned int,int *,int) ;
 int NonPagedPool ;

size_t FSE_buildCTable(FSE_CTable* ct, const short* normalizedCounter, unsigned maxSymbolValue, unsigned tableLog)
{
    FSE_FUNCTION_TYPE* tableSymbol = ExAllocatePoolWithTag(NonPagedPool, sizeof(FSE_FUNCTION_TYPE) * FSE_MAX_TABLESIZE, FSEC_ALLOC_TAG);
    size_t ret;

    if (!tableSymbol)
        return 0;

    ret = FSE_buildCTable_wksp(ct, normalizedCounter, maxSymbolValue, tableLog, tableSymbol, sizeof(FSE_FUNCTION_TYPE) * FSE_MAX_TABLESIZE);

    ExFreePool(tableSymbol);

    return ret;
}
