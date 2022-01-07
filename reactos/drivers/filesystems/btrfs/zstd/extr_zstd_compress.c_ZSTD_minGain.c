
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ZSTD_strategy ;
typedef size_t U32 ;


 scalar_t__ ZSTD_btultra ;

__attribute__((used)) static size_t ZSTD_minGain(size_t srcSize, ZSTD_strategy strat)
{
    U32 const minlog = (strat==ZSTD_btultra) ? 7 : 6;
    return (srcSize >> minlog) + 2;
}
