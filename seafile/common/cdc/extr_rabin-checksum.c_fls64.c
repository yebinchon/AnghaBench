
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;


 char fls32 (int) ;

__attribute__((used)) static inline char fls64 (u_int64_t v)
{
    u_int32_t h;
    if ((h = v >> 32))
        return 32 + fls32 (h);
    else
        return fls32 ((u_int32_t) v);
}
