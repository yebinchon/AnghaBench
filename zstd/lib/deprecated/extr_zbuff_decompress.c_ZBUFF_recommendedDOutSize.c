
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_DStreamOutSize () ;

size_t ZBUFF_recommendedDOutSize(void) { return ZSTD_DStreamOutSize(); }
