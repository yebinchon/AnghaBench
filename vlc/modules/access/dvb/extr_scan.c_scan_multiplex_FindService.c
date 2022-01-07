
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ i_program; } ;
typedef TYPE_1__ scan_service_t ;
struct TYPE_6__ {size_t i_services; TYPE_1__** pp_services; } ;
typedef TYPE_2__ scan_multiplex_t ;



__attribute__((used)) static scan_service_t * scan_multiplex_FindService( const scan_multiplex_t *p_mplex, uint16_t i_program )
{
    for( size_t i = 0; i < p_mplex->i_services; i++ )
    {
        if( p_mplex->pp_services[i]->i_program == i_program )
            return p_mplex->pp_services[i];
    }
    return ((void*)0);
}
