
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {scalar_t__ i_proto; scalar_t__ i_header; int p_header; int p_media; int p_cmd; int i_handle_udp; int i_handle_tcp; int i_command_level; } ;
typedef TYPE_2__ access_sys_t ;


 int FREENULL (int ) ;
 scalar_t__ MMS_PROTO_UDP ;
 int mms_CommandSend (TYPE_1__*,int,int ,int,int *,int ) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int net_Close (int ) ;

__attribute__((used)) static void MMSClose( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    msg_Dbg( p_access, "Connection closed" );


    mms_CommandSend( p_access,
                     0x0d,
                     p_sys->i_command_level,
                     0x00000001,
                     ((void*)0), 0 );


    net_Close( p_sys->i_handle_tcp );
    if( p_sys->i_proto == MMS_PROTO_UDP )
    {
        net_Close( p_sys->i_handle_udp );
    }

    FREENULL( p_sys->p_cmd );
    FREENULL( p_sys->p_media );
    FREENULL( p_sys->p_header );
    p_sys->i_header = 0;
}
