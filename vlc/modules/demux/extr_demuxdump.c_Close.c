
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int sout_access_out_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ demux_t ;


 int sout_AccessOutDelete (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    sout_access_out_t *out = (void *)p_demux->p_sys;

    sout_AccessOutDelete( out );
}
