
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long int64_t ;


 long long nc_usec_now () ;

int64_t
nc_msec_now(void)
{
    return nc_usec_now() / 1000LL;
}
