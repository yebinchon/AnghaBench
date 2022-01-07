
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int S16 ;
typedef int FSE_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int FSE_buildDTable (int *,int *,int,int) ;
 int FSE_buildDTable_raw (int *,int) ;
 int FSE_buildDTable_rle (int *,int ) ;
 int FSE_isError (size_t) ;
 size_t FSE_readNCount (int *,int*,int*,int const*,int) ;
 int GENERIC ;
 int LLFSELog ;
 int LLbits ;
 int MLFSELog ;
 int MLbits ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 int OffFSELog ;
 int Offbits ;
 int ZSTD_readLE16 (int const*) ;


 int corruption_detected ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv01_decodeSeqHeaders(int* nbSeq, const BYTE** dumpsPtr, size_t* dumpsLengthPtr,
                         FSE_DTable* DTableLL, FSE_DTable* DTableML, FSE_DTable* DTableOffb,
                         const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* ip = istart;
    const BYTE* const iend = istart + srcSize;
    U32 LLtype, Offtype, MLtype;
    U32 LLlog, Offlog, MLlog;
    size_t dumpsLength;


    if (srcSize < 5) return ERROR(srcSize_wrong);


    *nbSeq = ZSTD_readLE16(ip); ip+=2;
    LLtype = *ip >> 6;
    Offtype = (*ip >> 4) & 3;
    MLtype = (*ip >> 2) & 3;
    if (*ip & 2)
    {
        dumpsLength = ip[2];
        dumpsLength += ip[1] << 8;
        ip += 3;
    }
    else
    {
        dumpsLength = ip[1];
        dumpsLength += (ip[0] & 1) << 8;
        ip += 2;
    }
    *dumpsPtr = ip;
    ip += dumpsLength;
    *dumpsLengthPtr = dumpsLength;


    if (ip > iend-3) return ERROR(srcSize_wrong);


    {
        S16 norm[MaxML+1];
        size_t headerSize;


        switch(LLtype)
        {
        case 128 :
            LLlog = 0;
            FSE_buildDTable_rle(DTableLL, *ip++); break;
        case 129 :
            LLlog = LLbits;
            FSE_buildDTable_raw(DTableLL, LLbits); break;
        default :
            { U32 max = MaxLL;
                headerSize = FSE_readNCount(norm, &max, &LLlog, ip, iend-ip);
                if (FSE_isError(headerSize)) return ERROR(GENERIC);
                if (LLlog > LLFSELog) return ERROR(corruption_detected);
                ip += headerSize;
                FSE_buildDTable(DTableLL, norm, max, LLlog);
        } }

        switch(Offtype)
        {
        case 128 :
            Offlog = 0;
            if (ip > iend-2) return ERROR(srcSize_wrong);
            FSE_buildDTable_rle(DTableOffb, *ip++); break;
        case 129 :
            Offlog = Offbits;
            FSE_buildDTable_raw(DTableOffb, Offbits); break;
        default :
            { U32 max = MaxOff;
                headerSize = FSE_readNCount(norm, &max, &Offlog, ip, iend-ip);
                if (FSE_isError(headerSize)) return ERROR(GENERIC);
                if (Offlog > OffFSELog) return ERROR(corruption_detected);
                ip += headerSize;
                FSE_buildDTable(DTableOffb, norm, max, Offlog);
        } }

        switch(MLtype)
        {
        case 128 :
            MLlog = 0;
            if (ip > iend-2) return ERROR(srcSize_wrong);
            FSE_buildDTable_rle(DTableML, *ip++); break;
        case 129 :
            MLlog = MLbits;
            FSE_buildDTable_raw(DTableML, MLbits); break;
        default :
            { U32 max = MaxML;
                headerSize = FSE_readNCount(norm, &max, &MLlog, ip, iend-ip);
                if (FSE_isError(headerSize)) return ERROR(GENERIC);
                if (MLlog > MLFSELog) return ERROR(corruption_detected);
                ip += headerSize;
                FSE_buildDTable(DTableML, norm, max, MLlog);
    } } }

    return ip-istart;
}
