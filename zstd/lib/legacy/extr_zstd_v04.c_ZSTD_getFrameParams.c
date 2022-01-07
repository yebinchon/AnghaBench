
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ windowLog; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 scalar_t__ ZSTD_MAGICNUMBER ;
 scalar_t__ ZSTD_WINDOWLOG_ABSOLUTEMIN ;
 size_t ZSTD_frameHeaderSize_max ;
 size_t ZSTD_frameHeaderSize_min ;
 int frameParameter_unsupported ;
 int memset (TYPE_1__*,int ,int) ;
 int prefix_unknown ;

__attribute__((used)) static size_t ZSTD_getFrameParams(ZSTD_parameters* params, const void* src, size_t srcSize)
{
    U32 magicNumber;
    if (srcSize < ZSTD_frameHeaderSize_min) return ZSTD_frameHeaderSize_max;
    magicNumber = MEM_readLE32(src);
    if (magicNumber != ZSTD_MAGICNUMBER) return ERROR(prefix_unknown);
    memset(params, 0, sizeof(*params));
    params->windowLog = (((const BYTE*)src)[4] & 15) + ZSTD_WINDOWLOG_ABSOLUTEMIN;
    if ((((const BYTE*)src)[4] >> 4) != 0) return ERROR(frameParameter_unsupported);
    return 0;
}
