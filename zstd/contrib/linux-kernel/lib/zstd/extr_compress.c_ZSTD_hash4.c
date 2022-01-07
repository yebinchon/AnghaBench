
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int prime4bytes ;

__attribute__((used)) static U32 ZSTD_hash4(U32 u, U32 h) { return (u * prime4bytes) >> (32 - h); }
