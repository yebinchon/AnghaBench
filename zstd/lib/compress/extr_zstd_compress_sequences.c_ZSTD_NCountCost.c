
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wksp ;
typedef int U32 ;
typedef int S16 ;
typedef int BYTE ;


 int FORWARD_IF_ERROR (int ) ;
 int FSE_NCOUNTBOUND ;
 int FSE_normalizeCount (int *,int const,unsigned int const*,size_t const,unsigned int const) ;
 int FSE_optimalTableLog (unsigned int const,size_t const,unsigned int const) ;
 size_t FSE_writeNCount (int *,int,int *,unsigned int const,int const) ;
 int MaxSeq ;

__attribute__((used)) static size_t ZSTD_NCountCost(unsigned const* count, unsigned const max,
                              size_t const nbSeq, unsigned const FSELog)
{
    BYTE wksp[FSE_NCOUNTBOUND];
    S16 norm[MaxSeq + 1];
    const U32 tableLog = FSE_optimalTableLog(FSELog, nbSeq, max);
    FORWARD_IF_ERROR(FSE_normalizeCount(norm, tableLog, count, nbSeq, max));
    return FSE_writeNCount(wksp, sizeof(wksp), norm, max, tableLog);
}
