
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int const S16 ;
typedef int FSEv06_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;




 int FSEv06_buildDTable (int *,int const*,int,int) ;
 int FSEv06_buildDTable_rle (int *,int const) ;
 int FSEv06_isError (size_t const) ;
 size_t FSEv06_readNCount (int const*,int*,int*,void const*,size_t) ;
 int MaxSeq ;
 int corruption_detected ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv06_buildSeqTable(FSEv06_DTable* DTable, U32 type, U32 max, U32 maxLog,
                                 const void* src, size_t srcSize,
                                 const S16* defaultNorm, U32 defaultLog, U32 flagRepeatTable)
{
    switch(type)
    {
    case 129 :
        if (!srcSize) return ERROR(srcSize_wrong);
        if ( (*(const BYTE*)src) > max) return ERROR(corruption_detected);
        FSEv06_buildDTable_rle(DTable, *(const BYTE*)src);
        return 1;
    case 130 :
        FSEv06_buildDTable(DTable, defaultNorm, max, defaultLog);
        return 0;
    case 128:
        if (!flagRepeatTable) return ERROR(corruption_detected);
        return 0;
    default :
    case 131 :
        { U32 tableLog;
            S16 norm[MaxSeq+1];
            size_t const headerSize = FSEv06_readNCount(norm, &max, &tableLog, src, srcSize);
            if (FSEv06_isError(headerSize)) return ERROR(corruption_detected);
            if (tableLog > maxLog) return ERROR(corruption_detected);
            FSEv06_buildDTable(DTable, norm, max, tableLog);
            return headerSize;
    } }
}
