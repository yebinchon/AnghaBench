
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ZSTD_frameHeader ;


 int ZSTD_decompressBound (int const*,size_t) ;
 int ZSTD_f_zstd1 ;
 int ZSTD_findDecompressedSize (int const*,size_t) ;
 int ZSTD_findFrameCompressedSize (int const*,size_t) ;
 int ZSTD_frameHeaderSize (int const*,size_t) ;
 int ZSTD_getDecompressedSize (int const*,size_t) ;
 int ZSTD_getDictID_fromFrame (int const*,size_t) ;
 int ZSTD_getFrameContentSize (int const*,size_t) ;
 int ZSTD_getFrameHeader (int *,int const*,size_t) ;
 int ZSTD_getFrameHeader_advanced (int *,int const*,size_t,int ) ;
 int ZSTD_isFrame (int const*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *src, size_t size)
{
    ZSTD_frameHeader zfh;




    ZSTD_getFrameContentSize(src, size);
    ZSTD_getDecompressedSize(src, size);
    ZSTD_findFrameCompressedSize(src, size);
    ZSTD_getDictID_fromFrame(src, size);
    ZSTD_findDecompressedSize(src, size);
    ZSTD_decompressBound(src, size);
    ZSTD_frameHeaderSize(src, size);
    ZSTD_isFrame(src, size);
    ZSTD_getFrameHeader(&zfh, src, size);
    ZSTD_getFrameHeader_advanced(&zfh, src, size, ZSTD_f_zstd1);
    return 0;
}
