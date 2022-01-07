
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int GetQWBE (int const*) ;

__attribute__((used)) static inline double GetDBLBE( const uint8_t *p )
{
    union
    {
        uint64_t uint64;
        double dbl;
    } u_64;

    u_64.uint64 = GetQWBE( p );
    return u_64.dbl;
}
