
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int events; int fd; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;
typedef int relayAddr ;
struct TYPE_8__ {scalar_t__ glob_ulNonce; int sAMT; int timeout; } ;
typedef TYPE_3__ access_sys_t ;


 int AF_INET ;
 int AMT_PORT ;
 scalar_t__ AMT_RELAY_ADV ;
 int MSG_TYPE_LEN ;
 size_t NONCE_LEN ;
 int POLLIN ;
 int RELAY_ADV_MSG_LEN ;
 int connect (int ,struct sockaddr*,int) ;
 int errno ;
 int htons (int ) ;
 int memcpy (scalar_t__*,char*,int) ;
 int memset (char*,int ,int) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 scalar_t__ ntohl (scalar_t__) ;
 scalar_t__ recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;
 int vlc_poll_i11e (struct pollfd*,int,int ) ;
 int vlc_strerror (int ) ;

__attribute__((used)) static bool amt_rcv_relay_adv( stream_t *p_access )
{
    char pkt[RELAY_ADV_MSG_LEN];
    access_sys_t *sys = p_access->p_sys;

    memset( pkt, 0, RELAY_ADV_MSG_LEN );

    struct pollfd ufd[1];

    ufd[0].fd = sys->sAMT;
    ufd[0].events = POLLIN;

    switch( vlc_poll_i11e(ufd, 1, sys->timeout) )
    {
        case 0:
            msg_Err(p_access, "AMT relay advertisement receive time-out");

        case -1:
            return 0;
    }

    struct sockaddr temp;
    socklen_t temp_size = sizeof( struct sockaddr );
    ssize_t len = recvfrom( sys->sAMT, pkt, RELAY_ADV_MSG_LEN, 0, &temp, &temp_size );

    if (len < 0)
    {
        msg_Err(p_access, "Received message length less than zero");
        return 0;
    }


    struct {
        uint32_t ulRcvNonce;
        uint32_t ipAddr;
        uint8_t type;
    } relay_adv_msg;

    memcpy( &relay_adv_msg.type, &pkt[0], MSG_TYPE_LEN );
    if( relay_adv_msg.type != AMT_RELAY_ADV )
    {
        msg_Err( p_access, "Received message not an AMT relay advertisement, ignoring. ");
        return 0;
    }

    memcpy( &relay_adv_msg.ulRcvNonce, &pkt[NONCE_LEN], NONCE_LEN );
    if( sys->glob_ulNonce != relay_adv_msg.ulRcvNonce )
    {
        msg_Err( p_access, "Discovery nonces differ! currNonce:%x rcvd%x", sys->glob_ulNonce, (uint32_t) ntohl(relay_adv_msg.ulRcvNonce) );
        return 0;
    }

    memcpy( &relay_adv_msg.ipAddr, &pkt[8], 4 );

    struct sockaddr_in relayAddr =
    {
        .sin_family = AF_INET,
        .sin_addr.s_addr = relay_adv_msg.ipAddr,
        .sin_port = htons( AMT_PORT ),
    };

    int nRet = connect( sys->sAMT, (struct sockaddr *)&relayAddr, sizeof(relayAddr) );
    if( nRet < 0 )
    {
        msg_Err( p_access, "Error connecting AMT UDP socket: %s", vlc_strerror(errno) );
        return 0;
    }

    return 1;
}
