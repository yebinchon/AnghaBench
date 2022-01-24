#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
typedef  scalar_t__ ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  relayAddr ;
struct TYPE_8__ {scalar_t__ glob_ulNonce; int /*<<< orphan*/  sAMT; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AMT_PORT ; 
 scalar_t__ AMT_RELAY_ADV ; 
 int MSG_TYPE_LEN ; 
 size_t NONCE_LEN ; 
 int /*<<< orphan*/  POLLIN ; 
 int RELAY_ADV_MSG_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC7 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9( stream_t *p_access )
{
    char pkt[RELAY_ADV_MSG_LEN];
    access_sys_t *sys = p_access->p_sys;

    FUNC3( pkt, 0, RELAY_ADV_MSG_LEN );

    struct pollfd ufd[1];

    ufd[0].fd = sys->sAMT;
    ufd[0].events = POLLIN;

    switch( FUNC7(ufd, 1, sys->timeout) )
    {
        case 0:
            FUNC4(p_access, "AMT relay advertisement receive time-out");
            /* fall through */
        case -1:
            return false;
    }

    struct sockaddr temp;
    socklen_t temp_size = sizeof( struct sockaddr );
    ssize_t len = FUNC6( sys->sAMT, pkt, RELAY_ADV_MSG_LEN, 0, &temp, &temp_size );

    if (len < 0)
    {
        FUNC4(p_access, "Received message length less than zero");
        return false;
    }

    /* AMT Relay Advertisement data (RFC7450) */
    struct {
        uint32_t ulRcvNonce;
        uint32_t ipAddr;
        uint8_t  type;
    } relay_adv_msg;

    FUNC2( &relay_adv_msg.type, &pkt[0], MSG_TYPE_LEN );
    if( relay_adv_msg.type != AMT_RELAY_ADV )
    {
        FUNC4( p_access, "Received message not an AMT relay advertisement, ignoring. ");
        return false;
    }

    FUNC2( &relay_adv_msg.ulRcvNonce, &pkt[NONCE_LEN], NONCE_LEN );
    if( sys->glob_ulNonce != relay_adv_msg.ulRcvNonce )
    {
        FUNC4( p_access, "Discovery nonces differ! currNonce:%x rcvd%x", sys->glob_ulNonce, (uint32_t) FUNC5(relay_adv_msg.ulRcvNonce) );
        return false;
    }

    FUNC2( &relay_adv_msg.ipAddr, &pkt[8], 4 );

    struct sockaddr_in relayAddr =
    {
        .sin_family       = AF_INET,
        .sin_addr.s_addr  = relay_adv_msg.ipAddr,
        .sin_port         = FUNC1( AMT_PORT ),
    };

    int nRet = FUNC0( sys->sAMT, (struct sockaddr *)&relayAddr, sizeof(relayAddr) );
    if( nRet < 0 )
    {
        FUNC4( p_access, "Error connecting AMT UDP socket: %s", FUNC8(errno) );
        return false;
    }

    return true;
}