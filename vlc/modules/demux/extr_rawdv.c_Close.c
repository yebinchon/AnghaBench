
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ demux_t ;
typedef int demux_sys_t ;


 int free (int *) ;
 int var_Destroy (TYPE_1__*,char*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    var_Destroy( p_demux, "rawdv-hurry-up");
    free( p_sys );
}
