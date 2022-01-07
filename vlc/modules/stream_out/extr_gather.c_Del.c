
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_2__ {int b_used; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *_id )
{
    VLC_UNUSED(p_stream);
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    id->b_used = 0;
}
