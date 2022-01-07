
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSEv06_DTable ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int LLFSELog ;
 int LL_defaultNorm ;
 int LL_defaultNormLog ;
 int LONGNBSEQ ;
 int MEM_readLE16 (int const*) ;
 size_t MIN_SEQUENCES_SIZE ;
 int MLFSELog ;
 int ML_defaultNorm ;
 int ML_defaultNormLog ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 int OF_defaultNorm ;
 int OF_defaultNormLog ;
 int OffFSELog ;
 size_t ZSTDv06_buildSeqTable (int *,int const,int ,int ,int const*,int,int ,int ,int) ;
 scalar_t__ ZSTDv06_isError (size_t const) ;
 int corruption_detected ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv06_decodeSeqHeaders(int* nbSeqPtr,
                             FSEv06_DTable* DTableLL, FSEv06_DTable* DTableML, FSEv06_DTable* DTableOffb, U32 flagRepeatTable,
                             const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* const iend = istart + srcSize;
    const BYTE* ip = istart;


    if (srcSize < MIN_SEQUENCES_SIZE) return ERROR(srcSize_wrong);


    { int nbSeq = *ip++;
        if (!nbSeq) { *nbSeqPtr=0; return 1; }
        if (nbSeq > 0x7F) {
            if (nbSeq == 0xFF) {
                if (ip+2 > iend) return ERROR(srcSize_wrong);
                nbSeq = MEM_readLE16(ip) + LONGNBSEQ, ip+=2;
            } else {
                if (ip >= iend) return ERROR(srcSize_wrong);
                nbSeq = ((nbSeq-0x80)<<8) + *ip++;
            }
        }
        *nbSeqPtr = nbSeq;
    }


    if (ip + 4 > iend) return ERROR(srcSize_wrong);
    { U32 const LLtype = *ip >> 6;
        U32 const Offtype = (*ip >> 4) & 3;
        U32 const MLtype = (*ip >> 2) & 3;
        ip++;


        { size_t const bhSize = ZSTDv06_buildSeqTable(DTableLL, LLtype, MaxLL, LLFSELog, ip, iend-ip, LL_defaultNorm, LL_defaultNormLog, flagRepeatTable);
            if (ZSTDv06_isError(bhSize)) return ERROR(corruption_detected);
            ip += bhSize;
        }
        { size_t const bhSize = ZSTDv06_buildSeqTable(DTableOffb, Offtype, MaxOff, OffFSELog, ip, iend-ip, OF_defaultNorm, OF_defaultNormLog, flagRepeatTable);
            if (ZSTDv06_isError(bhSize)) return ERROR(corruption_detected);
            ip += bhSize;
        }
        { size_t const bhSize = ZSTDv06_buildSeqTable(DTableML, MLtype, MaxML, MLFSELog, ip, iend-ip, ML_defaultNorm, ML_defaultNormLog, flagRepeatTable);
            if (ZSTDv06_isError(bhSize)) return ERROR(corruption_detected);
            ip += bhSize;
    } }

    return ip-istart;
}
