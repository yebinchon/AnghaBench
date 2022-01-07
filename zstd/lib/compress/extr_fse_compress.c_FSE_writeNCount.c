
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ERROR (int ) ;
 unsigned int FSE_MAX_TABLELOG ;
 unsigned int FSE_MIN_TABLELOG ;
 size_t FSE_NCountWriteBound (unsigned int,unsigned int) ;
 size_t FSE_writeNCount_generic (void*,size_t,short const*,unsigned int,unsigned int,int) ;
 int GENERIC ;
 int tableLog_tooLarge ;

size_t FSE_writeNCount (void* buffer, size_t bufferSize,
                  const short* normalizedCounter, unsigned maxSymbolValue, unsigned tableLog)
{
    if (tableLog > FSE_MAX_TABLELOG) return ERROR(tableLog_tooLarge);
    if (tableLog < FSE_MIN_TABLELOG) return ERROR(GENERIC);

    if (bufferSize < FSE_NCountWriteBound(maxSymbolValue, tableLog))
        return FSE_writeNCount_generic(buffer, bufferSize, normalizedCounter, maxSymbolValue, tableLog, 0);

    return FSE_writeNCount_generic(buffer, bufferSize, normalizedCounter, maxSymbolValue, tableLog, 1 );
}
