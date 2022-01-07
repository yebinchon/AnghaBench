
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ZSTD_format_e ;


 scalar_t__ ZSTD_FRAMEHEADERSIZE_PREFIX ;
 scalar_t__ ZSTD_FRAMEIDSIZE ;
 int ZSTD_STATIC_ASSERT (int) ;
 scalar_t__ ZSTD_f_zstd1 ;
 scalar_t__ ZSTD_f_zstd1_magicless ;
 scalar_t__ ZSTD_frameHeaderSize_prefix ;
 int assert (int) ;

__attribute__((used)) static size_t ZSTD_startingInputLength(ZSTD_format_e format)
{
    size_t const startingInputLength = (format==ZSTD_f_zstd1_magicless) ?
                    ZSTD_frameHeaderSize_prefix - ZSTD_FRAMEIDSIZE :
                    ZSTD_frameHeaderSize_prefix;
    ZSTD_STATIC_ASSERT(ZSTD_FRAMEHEADERSIZE_PREFIX >= ZSTD_FRAMEIDSIZE);

    assert( (format == ZSTD_f_zstd1) || (format == ZSTD_f_zstd1_magicless) );
    return startingInputLength;
}
