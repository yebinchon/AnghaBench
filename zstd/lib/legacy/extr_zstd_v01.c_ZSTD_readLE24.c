
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int BYTE ;


 scalar_t__ ZSTD_readLE16 (void const*) ;

__attribute__((used)) static U32 ZSTD_readLE24(const void* memPtr)
{
    return ZSTD_readLE16(memPtr) + (((const BYTE*)memPtr)[2] << 16);
}
