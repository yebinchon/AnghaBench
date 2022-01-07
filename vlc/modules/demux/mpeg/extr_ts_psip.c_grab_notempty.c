
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *grab_notempty( char **ppsz )
{
    char *psz_ret = ((void*)0);
    if( *ppsz && **ppsz )
    {
        psz_ret = *ppsz;
        *ppsz = ((void*)0);
    }
    return psz_ret;
}
