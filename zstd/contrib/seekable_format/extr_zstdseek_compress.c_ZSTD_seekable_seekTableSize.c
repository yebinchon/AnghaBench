
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t const size; scalar_t__ checksumFlag; } ;
typedef TYPE_1__ ZSTD_frameLog ;


 size_t const ZSTD_SKIPPABLEHEADERSIZE ;
 size_t const ZSTD_seekTableFooterSize ;

__attribute__((used)) static inline size_t ZSTD_seekable_seekTableSize(const ZSTD_frameLog* fl)
{
    size_t const sizePerFrame = 8 + (fl->checksumFlag?4:0);
    size_t const seekTableLen = ZSTD_SKIPPABLEHEADERSIZE +
                                sizePerFrame * fl->size +
                                ZSTD_seekTableFooterSize;

    return seekTableLen;
}
