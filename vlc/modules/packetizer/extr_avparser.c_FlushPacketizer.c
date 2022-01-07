
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pf_packetize; int * p_sys; } ;
typedef TYPE_1__ decoder_t ;


 int PacketizeClosed ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int avparser_ClosePacketizer (int ) ;
 int avparser_OpenPacketizer (int ) ;
 int msg_Err (TYPE_1__*,char*,int) ;

__attribute__((used)) static void FlushPacketizer( decoder_t *p_dec )
{
    avparser_ClosePacketizer( VLC_OBJECT( p_dec ) );
    p_dec->p_sys = ((void*)0);
    int res = avparser_OpenPacketizer( VLC_OBJECT( p_dec ) );
    if ( res != VLC_SUCCESS )
    {
        msg_Err( p_dec, "failed to flush with error %d", res );
        p_dec->pf_packetize = PacketizeClosed;
    }
}
