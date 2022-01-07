
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef scalar_t__ int64 ;



__attribute__((used)) static inline uint64
zig_zag_decode(uint64 value)
{

 return (value >> 1) ^ (uint64) - (int64)(value & 1);
}
