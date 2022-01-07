
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int i_channel; int b_crypted; int * psz_original_network_name; int * psz_provider; int * psz_name; int type; int i_original_network_id; int i_program; int * stickyref; int * p_mplex; } ;
typedef TYPE_1__ scan_service_t ;


 int NETWORK_ID_RESERVED ;
 int SERVICE_TYPE_RESERVED ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static scan_service_t *scan_service_New( uint16_t i_program )
{
    scan_service_t *p_srv = malloc( sizeof(*p_srv) );
    if( !p_srv )
        return ((void*)0);

    p_srv->p_mplex = ((void*)0);
    p_srv->stickyref = ((void*)0);
    p_srv->i_program = i_program;
    p_srv->i_original_network_id = NETWORK_ID_RESERVED;

    p_srv->type = SERVICE_TYPE_RESERVED;
    p_srv->psz_name = ((void*)0);
    p_srv->psz_provider = ((void*)0);
    p_srv->psz_original_network_name = ((void*)0);
    p_srv->i_channel = -1;
    p_srv->b_crypted = 0;

    return p_srv;
}
