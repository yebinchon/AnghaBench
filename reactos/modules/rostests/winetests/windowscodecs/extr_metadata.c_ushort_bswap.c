
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;



__attribute__((used)) static inline USHORT ushort_bswap(USHORT s)
{
    return (s >> 8) | (s << 8);
}
