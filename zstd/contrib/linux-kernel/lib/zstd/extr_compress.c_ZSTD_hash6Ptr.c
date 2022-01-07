
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 size_t ZSTD_hash6 (int ,int ) ;
 int ZSTD_readLE64 (void const*) ;

__attribute__((used)) static size_t ZSTD_hash6Ptr(const void *p, U32 h) { return ZSTD_hash6(ZSTD_readLE64(p), h); }
