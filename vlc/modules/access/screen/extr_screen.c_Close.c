
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {TYPE_3__* p_blend; scalar_t__ p_mouse; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_9__ {int p_module; } ;


 int free (TYPE_2__*) ;
 int module_unneed (TYPE_3__*,int ) ;
 int picture_Release (scalar_t__) ;
 int screen_CloseCapture (TYPE_1__*) ;
 int vlc_object_delete (TYPE_3__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    screen_CloseCapture( p_demux );
    free( p_sys );
}
