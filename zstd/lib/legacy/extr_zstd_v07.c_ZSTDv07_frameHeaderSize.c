
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t* ZSTDv07_did_fieldSize ;
 size_t* ZSTDv07_fcs_fieldSize ;
 size_t ZSTDv07_frameHeaderSize_min ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv07_frameHeaderSize(const void* src, size_t srcSize)
{
    if (srcSize < ZSTDv07_frameHeaderSize_min) return ERROR(srcSize_wrong);
    { BYTE const fhd = ((const BYTE*)src)[4];
        U32 const dictID= fhd & 3;
        U32 const directMode = (fhd >> 5) & 1;
        U32 const fcsId = fhd >> 6;
        return ZSTDv07_frameHeaderSize_min + !directMode + ZSTDv07_did_fieldSize[dictID] + ZSTDv07_fcs_fieldSize[fcsId]
                + (directMode && !ZSTDv07_fcs_fieldSize[fcsId]);
    }
}
