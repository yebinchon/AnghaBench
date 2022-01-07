
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p_mplex; } ;
typedef TYPE_2__ scan_service_t ;
struct TYPE_4__ {char const* psz_network_name; } ;



const char * scan_service_GetNetworkName( const scan_service_t *s )
{
    if( s->p_mplex )
        return s->p_mplex->psz_network_name;
    else
        return ((void*)0);
}
