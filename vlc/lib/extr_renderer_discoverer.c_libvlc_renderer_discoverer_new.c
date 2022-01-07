
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int event_manager; int * p_rd; int pp_items; int i_items; int name; int p_object; } ;
typedef TYPE_1__ libvlc_renderer_discoverer_t ;
struct TYPE_8__ {int p_libvlc_int; } ;
typedef TYPE_2__ libvlc_instance_t ;


 int TAB_INIT (int ,int ) ;
 int VLC_OBJECT (int ) ;
 int libvlc_event_manager_init (int *,TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

libvlc_renderer_discoverer_t *
libvlc_renderer_discoverer_new( libvlc_instance_t *p_inst,
                                const char *psz_name )
{
    size_t len = strlen( psz_name ) + 1;
    libvlc_renderer_discoverer_t *p_lrd = malloc( sizeof(*p_lrd) + len );

    if( unlikely(p_lrd == ((void*)0)) )
        return ((void*)0);

    p_lrd->p_object = VLC_OBJECT(p_inst->p_libvlc_int);
    memcpy( p_lrd->name, psz_name, len );
    TAB_INIT( p_lrd->i_items, p_lrd->pp_items );
    p_lrd->p_rd = ((void*)0);
    libvlc_event_manager_init( &p_lrd->event_manager, p_lrd );

    return p_lrd;
}
