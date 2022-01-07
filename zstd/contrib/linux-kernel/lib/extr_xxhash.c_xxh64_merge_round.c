
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PRIME64_1 ;
 int PRIME64_4 ;
 int xxh64_round (int ,int) ;

__attribute__((used)) static uint64_t xxh64_merge_round(uint64_t acc, uint64_t val)
{
 val = xxh64_round(0, val);
 acc ^= val;
 acc = acc * PRIME64_1 + PRIME64_4;
 return acc;
}
