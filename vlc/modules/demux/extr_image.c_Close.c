
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ demux_sys_t ;


 int block_Release (scalar_t__) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close(vlc_object_t *object)
{
    demux_t *demux = (demux_t*)object;
    demux_sys_t *sys = demux->p_sys;

    if (sys->data)
        block_Release(sys->data);
    free(sys);
}
