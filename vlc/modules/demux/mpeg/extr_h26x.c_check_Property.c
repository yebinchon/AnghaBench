
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;



__attribute__((used)) static inline bool check_Property( demux_t *p_demux, const char **pp_psz,
                                   bool(*pf_check)(demux_t *, const char *) )
{
    while( *pp_psz )
    {
        if( pf_check( p_demux, *pp_psz ) )
            return 1;
        pp_psz++;
    }
    return 0;
}
