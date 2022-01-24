#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  chaSendBuffer ;
struct TYPE_6__ {int /*<<< orphan*/  sAMT; scalar_t__ glob_ulNonce; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 char AMT_REQUEST ; 
 int AMT_REQUEST_MSG_LEN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( stream_t *p_access, char *relay_ip )
{
    char         chaSendBuffer[AMT_REQUEST_MSG_LEN];
    uint32_t     ulNonce;
    int          nRet;
    access_sys_t *sys = p_access->p_sys;

    FUNC1( chaSendBuffer, 0, sizeof(chaSendBuffer) );

    ulNonce = 0;
    nRet = 0;

    /*
     * create AMT request message format
     * +-----------------------------------------------------------------+
     * | Msg Type(1Byte)| Reserved(1byte)|P flag(1byte)|Reserved (2 byte)|
     * +-----------------------------------------------------------------+
     * |             nonce (4byte)                                       |
     * +-----------------------------------------------------------------+
     *
     * The P flag is set to indicate which group membership protocol the
     * gateway wishes the relay to use in the Membership Query response:

     * Value Meaning

     *  0    The relay MUST respond with a Membership Query message that
     *       contains an IPv4 packet carrying an IGMPv3 General Query
     *       message.
     *  1    The relay MUST respond with a Membership Query message that
     *       contains an IPv6 packet carrying an MLDv2 General Query
     *       message.
     *
     */

    chaSendBuffer[0] = AMT_REQUEST;
    chaSendBuffer[1] = 0;
    chaSendBuffer[2] = 0;
    chaSendBuffer[3] = 0;

    ulNonce = sys->glob_ulNonce;
    FUNC0( &chaSendBuffer[4], &ulNonce, sizeof(uint32_t) );

    nRet = FUNC3( sys->sAMT, chaSendBuffer, sizeof(chaSendBuffer), 0 );

    if( nRet < 0 )
        FUNC2(p_access, "Error sending relay request to %s error: %s", relay_ip, FUNC4(errno) );
}