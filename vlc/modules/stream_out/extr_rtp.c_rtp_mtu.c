
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_mtu; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;



size_t rtp_mtu (const sout_stream_id_sys_t *id)
{
    return id->i_mtu - 12;
}
