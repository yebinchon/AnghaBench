#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U32 ;
typedef  int /*<<< orphan*/  S16 ;
typedef  int /*<<< orphan*/  FSEv05_DTable ;
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
#define  FSEv05_ENCODING_DYNAMIC 131 
#define  FSEv05_ENCODING_RAW 130 
#define  FSEv05_ENCODING_RLE 129 
#define  FSEv05_ENCODING_STATIC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,unsigned int*,unsigned int*,int const*,int) ; 
 int /*<<< orphan*/  GENERIC ; 
 unsigned int LLFSEv05Log ; 
 unsigned int LLbits ; 
 size_t MIN_SEQUENCES_SIZE ; 
 unsigned int MLFSEv05Log ; 
 unsigned int MLbits ; 
 unsigned int MaxLL ; 
 unsigned int MaxML ; 
 unsigned int MaxOff ; 
 unsigned int OffFSEv05Log ; 
 unsigned int Offbits ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC6(int* nbSeq, const BYTE** dumpsPtr, size_t* dumpsLengthPtr,
                         FSEv05_DTable* DTableLL, FSEv05_DTable* DTableML, FSEv05_DTable* DTableOffb,
                         const void* src, size_t srcSize, U32 flagStaticTable)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* ip = istart;
    const BYTE* const iend = istart + srcSize;
    U32 LLtype, Offtype, MLtype;
    unsigned LLlog, Offlog, MLlog;
    size_t dumpsLength;

    /* check */
    if (srcSize < MIN_SEQUENCES_SIZE)
        return FUNC0(srcSize_wrong);

    /* SeqHead */
    *nbSeq = *ip++;
    if (*nbSeq==0) return 1;
    if (*nbSeq >= 128) {
        if (ip >= iend) return FUNC0(srcSize_wrong);
        *nbSeq = ((nbSeq[0]-128)<<8) + *ip++;
    }

    if (ip >= iend) return FUNC0(srcSize_wrong);
    LLtype  = *ip >> 6;
    Offtype = (*ip >> 4) & 3;
    MLtype  = (*ip >> 2) & 3;
    if (*ip & 2) {
        if (ip+3 > iend) return FUNC0(srcSize_wrong);
        dumpsLength  = ip[2];
        dumpsLength += ip[1] << 8;
        ip += 3;
    } else {
        if (ip+2 > iend) return FUNC0(srcSize_wrong);
        dumpsLength  = ip[1];
        dumpsLength += (ip[0] & 1) << 8;
        ip += 2;
    }
    *dumpsPtr = ip;
    ip += dumpsLength;
    *dumpsLengthPtr = dumpsLength;

    /* check */
    if (ip > iend-3) return FUNC0(srcSize_wrong); /* min : all 3 are "raw", hence no header, but at least xxLog bits per type */

    /* sequences */
    {
        S16 norm[MaxML+1];    /* assumption : MaxML >= MaxLL >= MaxOff */
        size_t headerSize;

        /* Build DTables */
        switch(LLtype)
        {
        case FSEv05_ENCODING_RLE :
            LLlog = 0;
            FUNC3(DTableLL, *ip++);
            break;
        case FSEv05_ENCODING_RAW :
            LLlog = LLbits;
            FUNC2(DTableLL, LLbits);
            break;
        case FSEv05_ENCODING_STATIC:
            if (!flagStaticTable) return FUNC0(corruption_detected);
            break;
        case FSEv05_ENCODING_DYNAMIC :
        default :   /* impossible */
            {   unsigned max = MaxLL;
                headerSize = FUNC5(norm, &max, &LLlog, ip, iend-ip);
                if (FUNC4(headerSize)) return FUNC0(GENERIC);
                if (LLlog > LLFSEv05Log) return FUNC0(corruption_detected);
                ip += headerSize;
                FUNC1(DTableLL, norm, max, LLlog);
        }   }

        switch(Offtype)
        {
        case FSEv05_ENCODING_RLE :
            Offlog = 0;
            if (ip > iend-2) return FUNC0(srcSize_wrong);   /* min : "raw", hence no header, but at least xxLog bits */
            FUNC3(DTableOffb, *ip++ & MaxOff); /* if *ip > MaxOff, data is corrupted */
            break;
        case FSEv05_ENCODING_RAW :
            Offlog = Offbits;
            FUNC2(DTableOffb, Offbits);
            break;
        case FSEv05_ENCODING_STATIC:
            if (!flagStaticTable) return FUNC0(corruption_detected);
            break;
        case FSEv05_ENCODING_DYNAMIC :
        default :   /* impossible */
            {   unsigned max = MaxOff;
                headerSize = FUNC5(norm, &max, &Offlog, ip, iend-ip);
                if (FUNC4(headerSize)) return FUNC0(GENERIC);
                if (Offlog > OffFSEv05Log) return FUNC0(corruption_detected);
                ip += headerSize;
                FUNC1(DTableOffb, norm, max, Offlog);
        }   }

        switch(MLtype)
        {
        case FSEv05_ENCODING_RLE :
            MLlog = 0;
            if (ip > iend-2) return FUNC0(srcSize_wrong); /* min : "raw", hence no header, but at least xxLog bits */
            FUNC3(DTableML, *ip++);
            break;
        case FSEv05_ENCODING_RAW :
            MLlog = MLbits;
            FUNC2(DTableML, MLbits);
            break;
        case FSEv05_ENCODING_STATIC:
            if (!flagStaticTable) return FUNC0(corruption_detected);
            break;
        case FSEv05_ENCODING_DYNAMIC :
        default :   /* impossible */
            {   unsigned max = MaxML;
                headerSize = FUNC5(norm, &max, &MLlog, ip, iend-ip);
                if (FUNC4(headerSize)) return FUNC0(GENERIC);
                if (MLlog > MLFSEv05Log) return FUNC0(corruption_detected);
                ip += headerSize;
                FUNC1(DTableML, norm, max, MLlog);
    }   }   }

    return ip-istart;
}