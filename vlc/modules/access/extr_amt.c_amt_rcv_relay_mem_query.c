
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pollfd {int events; int fd; } ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_9__ {char type; char max_resp_code; scalar_t__ checksum; scalar_t__ ssmIP; char s_qrv; int qqic; scalar_t__ nSrc; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__* uchaMAC; scalar_t__ ulRcvedNonce; } ;
struct TYPE_11__ {scalar_t__ glob_ulNonce; TYPE_2__ relay_igmp_query; int updateTimer; TYPE_1__ relay_mem_query_msg; int sAMT; int timeout; } ;
typedef TYPE_4__ access_sys_t ;


 size_t AMT_HDR_LEN ;
 size_t IP_HDR_IGMP_LEN ;
 size_t MAC_LEN ;
 int MSG_TYPE_LEN ;
 size_t NONCE_LEN ;
 int POLLIN ;
 int RELAY_QUERY_MSG_LEN ;
 int VLC_TICK_FROM_SEC (char) ;
 int assert (int) ;
 int memcpy (scalar_t__*,char*,int) ;
 int memset (char*,int ,int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int msg_Warn (TYPE_3__*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ recv (int ,char*,int,int ) ;
 int vlc_poll_i11e (struct pollfd*,int,int ) ;
 int vlc_timer_schedule (int ,int,int ,int ) ;

__attribute__((used)) static bool amt_rcv_relay_mem_query( stream_t *p_access )
{
    char pkt[RELAY_QUERY_MSG_LEN];
    memset( pkt, 0, RELAY_QUERY_MSG_LEN );
    struct pollfd ufd[1];
    access_sys_t *sys = p_access->p_sys;

    ufd[0].fd = sys->sAMT;
    ufd[0].events = POLLIN;

    switch( vlc_poll_i11e(ufd, 1, sys->timeout) )
    {
        case 0:
            msg_Err(p_access, "AMT relay membership query receive time-out");

        case -1:
            return 0;
    }

    ssize_t len = recv( sys->sAMT, pkt, RELAY_QUERY_MSG_LEN, 0 );

    if (len < 0 || len != RELAY_QUERY_MSG_LEN)
    {
        msg_Err(p_access, "length less than zero");
        return 0;
    }

    memcpy( &sys->relay_mem_query_msg.type, &pkt[0], MSG_TYPE_LEN );

    memcpy( &sys->relay_mem_query_msg.uchaMAC[0], &pkt[AMT_HDR_LEN], MAC_LEN );
    memcpy( &sys->relay_mem_query_msg.ulRcvedNonce, &pkt[AMT_HDR_LEN + MAC_LEN], NONCE_LEN );
    if( sys->relay_mem_query_msg.ulRcvedNonce != sys->glob_ulNonce )
    {
        msg_Warn( p_access, "Nonces are different rcvd: %x glob: %x", sys->relay_mem_query_msg.ulRcvedNonce, sys->glob_ulNonce );
        return 0;
    }

    size_t shift = AMT_HDR_LEN + MAC_LEN + NONCE_LEN + IP_HDR_IGMP_LEN;
    sys->relay_igmp_query.type = pkt[shift];
    shift++; assert( shift < RELAY_QUERY_MSG_LEN);
    sys->relay_igmp_query.max_resp_code = pkt[shift];
    shift++; assert( shift < RELAY_QUERY_MSG_LEN);
    memcpy( &sys->relay_igmp_query.checksum, &pkt[shift], 2 );
    shift += 2; assert( shift < RELAY_QUERY_MSG_LEN);
    memcpy( &sys->relay_igmp_query.ssmIP, &pkt[shift], 4 );
    shift += 4; assert( shift < RELAY_QUERY_MSG_LEN);
    sys->relay_igmp_query.s_qrv = pkt[shift];
    shift++; assert( shift < RELAY_QUERY_MSG_LEN);
    if( pkt[shift] == 0 )
        sys->relay_igmp_query.qqic = 125;
    else
        sys->relay_igmp_query.qqic = pkt[shift];

    shift++; assert( shift < RELAY_QUERY_MSG_LEN);
    memcpy( &sys->relay_igmp_query.nSrc, &pkt[shift], 2 );


    vlc_timer_schedule( sys->updateTimer, 0,
                        VLC_TICK_FROM_SEC( sys->relay_igmp_query.qqic ), 0 );

    return 1;
}
