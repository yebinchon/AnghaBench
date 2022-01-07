
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int i_sequence; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;



uint16_t rtp_get_extended_sequence( sout_stream_id_sys_t *id )
{
    return id->i_sequence >> 16;
}
