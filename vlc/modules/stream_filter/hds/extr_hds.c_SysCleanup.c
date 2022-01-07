
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_count; int * pp_elems; } ;
struct TYPE_4__ {int base_url; TYPE_2__ hds_streams; } ;
typedef TYPE_1__ stream_sys_t ;


 int free (int ) ;
 int hds_free (int ) ;
 int vlc_array_clear (TYPE_2__*) ;

__attribute__((used)) static void SysCleanup( stream_sys_t *p_sys )
{
    for( size_t i = 0; i < p_sys->hds_streams.i_count ; i++ )
        hds_free( p_sys->hds_streams.pp_elems[i] );
    vlc_array_clear( &p_sys->hds_streams );
    free( p_sys->base_url );
}
