#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct addrinfo {scalar_t__ ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct TYPE_21__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ stream_t ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_19__ {scalar_t__ s_addr; } ;
struct TYPE_20__ {TYPE_2__ sin_addr; } ;
struct TYPE_18__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_22__ {char* relay; int tryAMT; char* relayDisco; int /*<<< orphan*/  updateTimer; TYPE_3__ mcastSrcAddr; TYPE_1__ relayDiscoAddr; } ;
typedef  TYPE_5__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AMT_PORT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,int*) ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*,...) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char*,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC22( stream_t *p_access )
{
    struct addrinfo hints, *serverinfo, *server;
    access_sys_t *sys = p_access->p_sys;

    FUNC14( &hints, 0, sizeof( hints ));
    hints.ai_family = AF_INET;  /* Setting to AF_UNSPEC accepts both IPv4 and IPv6 */
    hints.ai_socktype = SOCK_DGRAM;

    FUNC15( p_access, "Attempting AMT to %s...", sys->relay);
    sys->tryAMT = true;

    /* Retrieve list of addresses matching the AMT relay */
    int response = FUNC18( sys->relay, AMT_PORT, &hints, &serverinfo );

    /* If an error returned print reason and exit */
    if( response != 0 )
    {
        FUNC16( p_access, "Could not find relay %s, reason: %s", sys->relay, FUNC11(response) );
        goto error;
    }

    /* Iterate through the list of sockets to find one that works */
    for (server = serverinfo; server != NULL && !FUNC19(); server = server->ai_next)
    {
        struct sockaddr_in *server_addr = (struct sockaddr_in *) server->ai_addr;
        char relay_ip[INET_ADDRSTRLEN];

        /* Convert to binary representation */
        if( FUNC17( FUNC12(AF_INET, &(server_addr->sin_addr), relay_ip, INET_ADDRSTRLEN) == NULL ) )
        {
            int errConv = errno;
            FUNC16(p_access, "Could not convert relay ip to binary representation: %s", FUNC11(errConv));
            goto error;
        }

        /* Store string representation */
        FUNC13(sys->relayDisco, relay_ip, INET_ADDRSTRLEN);
        if( FUNC17( sys->relayDisco == NULL ) )
        {
            goto error;
        }

        FUNC15( p_access, "Trying AMT Server: %s", sys->relayDisco);

        /* Store the binary representation */
        sys->relayDiscoAddr.sin_addr = server_addr->sin_addr;

        if( FUNC8( p_access ) != 0 )
            continue; /* Try next server */

        /* Negotiate with AMT relay and confirm you can pull a UDP packet  */
        FUNC6( p_access, relay_ip );
        FUNC15( p_access, "Sent relay AMT discovery message to %s", relay_ip );

        if( !FUNC3( p_access ) )
        {
            FUNC16( p_access, "Error receiving AMT relay advertisement msg from %s, skipping", relay_ip );
            goto error;
        }
        FUNC15( p_access, "Received AMT relay advertisement from %s", relay_ip );

        FUNC7( p_access, relay_ip );
        FUNC15( p_access, "Sent AMT relay request message to %s", relay_ip );

        if( !FUNC4( p_access ) )
        {
            FUNC16( p_access, "Could not receive AMT relay membership query from %s, reason: %s", relay_ip, FUNC20(errno));
            goto error;
        }
        FUNC15( p_access, "Received AMT relay membership query from %s", relay_ip );

        /* If single source multicast send SSM join */
        if( sys->mcastSrcAddr.sin_addr.s_addr )
        {
            if( FUNC2( p_access ) != 0 )
            {
                FUNC16( p_access, "Error joining SSM %s", FUNC20(errno) );
                goto error;
            }
            FUNC15( p_access, "Joined SSM" );
        }

        /* If any source multicast send ASM join */
        else {
            if( FUNC1( p_access ) != 0 )
            {
                FUNC16( p_access, "Error joining ASM %s", FUNC20(errno) );
                goto error;
            }
            FUNC15( p_access, "Joined ASM group" );
        }

        /* If started, the timer must be stopped before trying the next server
         * in order to avoid data-race with sys->sAMT. */
        FUNC21( sys->updateTimer );

        FUNC5( p_access, sys->relayDisco, false );
        bool eof=false;
        block_t *pkt;

        /* Confirm that you can pull a UDP packet from the socket */
        if ( !(pkt = FUNC0( p_access, &eof )) )
        {
            FUNC16( p_access, "Unable to receive UDP packet from AMT relay %s for multicast group", relay_ip );
            continue;
        }
        else
        {
            FUNC9( pkt );
            FUNC15( p_access, "Got UDP packet from multicast group via AMT relay %s, continuing...", relay_ip );
            break;   /* found an active server sending UDP packets, so exit loop */
        }
    }

    /* if server is NULL then no AMT relay is responding */
    if (server == NULL)
    {
        FUNC16( p_access, "No AMT servers responding" );
        goto error;
    }

    /* release the allocated memory */
    FUNC10( serverinfo );
    return true;

error:
    FUNC21( sys->updateTimer );
    if( serverinfo )
        FUNC10( serverinfo );
    return false;
}