#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_9__ {char type; char max_resp_code; scalar_t__ checksum; scalar_t__ ssmIP; char s_qrv; int qqic; scalar_t__ nSrc; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__* uchaMAC; scalar_t__ ulRcvedNonce; } ;
struct TYPE_11__ {scalar_t__ glob_ulNonce; TYPE_2__ relay_igmp_query; int /*<<< orphan*/  updateTimer; TYPE_1__ relay_mem_query_msg; int /*<<< orphan*/  sAMT; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 size_t AMT_HDR_LEN ; 
 size_t IP_HDR_IGMP_LEN ; 
 size_t MAC_LEN ; 
 int MSG_TYPE_LEN ; 
 size_t NONCE_LEN ; 
 int /*<<< orphan*/  POLLIN ; 
 int RELAY_QUERY_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9( stream_t *p_access )
{
    char pkt[RELAY_QUERY_MSG_LEN];
    FUNC3( pkt, 0, RELAY_QUERY_MSG_LEN );
    struct pollfd ufd[1];
    access_sys_t *sys = p_access->p_sys;

    ufd[0].fd = sys->sAMT;
    ufd[0].events = POLLIN;

    switch( FUNC7(ufd, 1, sys->timeout) )
    {
        case 0:
            FUNC4(p_access, "AMT relay membership query receive time-out");
            /* fall through */
        case -1:
            return false;
    }

    ssize_t len = FUNC6( sys->sAMT, pkt, RELAY_QUERY_MSG_LEN, 0 );

    if (len < 0 || len != RELAY_QUERY_MSG_LEN)
    {
        FUNC4(p_access, "length less than zero");
        return false;
    }

    FUNC2( &sys->relay_mem_query_msg.type, &pkt[0], MSG_TYPE_LEN );
    /* pkt[1] is reserved  */
    FUNC2( &sys->relay_mem_query_msg.uchaMAC[0], &pkt[AMT_HDR_LEN], MAC_LEN );
    FUNC2( &sys->relay_mem_query_msg.ulRcvedNonce, &pkt[AMT_HDR_LEN + MAC_LEN], NONCE_LEN );
    if( sys->relay_mem_query_msg.ulRcvedNonce != sys->glob_ulNonce )
    {
        FUNC5( p_access, "Nonces are different rcvd: %x glob: %x", sys->relay_mem_query_msg.ulRcvedNonce, sys->glob_ulNonce );
        return false;
    }

    size_t shift = AMT_HDR_LEN + MAC_LEN + NONCE_LEN + IP_HDR_IGMP_LEN;
    sys->relay_igmp_query.type = pkt[shift];
    shift++; FUNC1( shift < RELAY_QUERY_MSG_LEN);
    sys->relay_igmp_query.max_resp_code = pkt[shift];
    shift++; FUNC1( shift < RELAY_QUERY_MSG_LEN);
    FUNC2( &sys->relay_igmp_query.checksum, &pkt[shift], 2 );
    shift += 2; FUNC1( shift < RELAY_QUERY_MSG_LEN);
    FUNC2( &sys->relay_igmp_query.ssmIP, &pkt[shift], 4 );
    shift += 4; FUNC1( shift < RELAY_QUERY_MSG_LEN);
    sys->relay_igmp_query.s_qrv = pkt[shift];
    shift++; FUNC1( shift < RELAY_QUERY_MSG_LEN);
    if( pkt[shift] == 0 )
        sys->relay_igmp_query.qqic = 125;
    else
        sys->relay_igmp_query.qqic = pkt[shift];

    shift++; FUNC1( shift < RELAY_QUERY_MSG_LEN);
    FUNC2( &sys->relay_igmp_query.nSrc, &pkt[shift], 2 );

    /* Arms the timer for a single shot: cf. amt_update_timer_cb comment */
    FUNC8( sys->updateTimer, false,
                        FUNC0( sys->relay_igmp_query.qqic ), 0 );

    return true;
}