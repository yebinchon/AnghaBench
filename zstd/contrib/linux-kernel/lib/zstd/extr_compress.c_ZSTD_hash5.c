
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef int U32 ;


 int prime5bytes ;

__attribute__((used)) static size_t ZSTD_hash5(U64 u, U32 h) { return (size_t)(((u << (64 - 40)) * prime5bytes) >> (64 - h)); }
