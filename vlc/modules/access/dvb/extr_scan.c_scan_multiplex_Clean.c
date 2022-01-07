
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_services; int * psz_network_name; int * pp_services; } ;
typedef TYPE_1__ scan_multiplex_t ;


 int free (int *) ;
 int scan_service_Delete (int ) ;

__attribute__((used)) static void scan_multiplex_Clean( scan_multiplex_t *p_mplex )
{
    for( size_t i=0; i<p_mplex->i_services; i++ )
        scan_service_Delete( p_mplex->pp_services[i] );
    free( p_mplex->pp_services );
    free( p_mplex->psz_network_name );
}
