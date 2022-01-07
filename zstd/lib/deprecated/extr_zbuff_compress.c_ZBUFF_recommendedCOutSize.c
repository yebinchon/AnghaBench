
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_CStreamOutSize () ;

size_t ZBUFF_recommendedCOutSize(void) { return ZSTD_CStreamOutSize(); }
