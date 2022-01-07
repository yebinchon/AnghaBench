
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int bswap64 (int ) ;

__attribute__((used)) static inline uint64_t
hton64(uint64_t val)
{

    return bswap64 (val);



}
