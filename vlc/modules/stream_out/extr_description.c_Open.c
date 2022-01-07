
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; int pf_send; int pf_del; int pf_add; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {int i_stream_start; int * data; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Add ;
 int Del ;
 int Send ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;
 int * var_InheritAddress (TYPE_1__*,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = malloc(sizeof(sout_stream_sys_t));
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_stream->pf_add = Add;
    p_stream->pf_del = Del;
    p_stream->pf_send = Send;
    p_stream->p_sys = p_sys;

    p_sys->data = var_InheritAddress(p_stream, "sout-description-data");
    if (p_sys->data == ((void*)0))
    {
        msg_Err(p_stream, "Missing data: the description stream output is "
                "not meant to be used without special setup from the core");
        free(p_sys);
        return VLC_EGENERIC;
    }
    p_sys->i_stream_start = VLC_TICK_INVALID;

    return VLC_SUCCESS;
}
