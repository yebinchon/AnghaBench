
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_provider; struct TYPE_4__* psz_name; struct TYPE_4__* psz_original_network_name; } ;
typedef TYPE_1__ scan_service_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void scan_service_Delete( scan_service_t *p_srv )
{
    free( p_srv->psz_original_network_name );
    free( p_srv->psz_name );
    free( p_srv->psz_provider );
    free( p_srv );
}
