
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; } ;
struct addrinfo {scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_socktype; int ai_family; } ;
struct TYPE_21__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ stream_t ;
typedef int hints ;
typedef int block_t ;
struct TYPE_19__ {scalar_t__ s_addr; } ;
struct TYPE_20__ {TYPE_2__ sin_addr; } ;
struct TYPE_18__ {int sin_addr; } ;
struct TYPE_22__ {char* relay; int tryAMT; char* relayDisco; int updateTimer; TYPE_3__ mcastSrcAddr; TYPE_1__ relayDiscoAddr; } ;
typedef TYPE_5__ access_sys_t ;


 int AF_INET ;
 int AMT_PORT ;
 int * BlockAMT (TYPE_4__*,int*) ;
 int INET_ADDRSTRLEN ;
 int SOCK_DGRAM ;
 scalar_t__ amt_joinASM_group (TYPE_4__*) ;
 scalar_t__ amt_joinSSM_group (TYPE_4__*) ;
 int amt_rcv_relay_adv (TYPE_4__*) ;
 int amt_rcv_relay_mem_query (TYPE_4__*) ;
 int amt_send_mem_update (TYPE_4__*,char*,int) ;
 int amt_send_relay_discovery_msg (TYPE_4__*,char*) ;
 int amt_send_relay_request (TYPE_4__*,char*) ;
 scalar_t__ amt_sockets_init (TYPE_4__*) ;
 int block_Release (int *) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int * inet_ntop (int ,int *,char*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int msg_Dbg (TYPE_4__*,char*,...) ;
 int msg_Err (TYPE_4__*,char*,...) ;
 scalar_t__ unlikely (int ) ;
 int vlc_getaddrinfo (char*,int ,struct addrinfo*,struct addrinfo**) ;
 int vlc_killed () ;
 int vlc_strerror (int) ;
 int vlc_timer_disarm (int ) ;

__attribute__((used)) static bool open_amt_tunnel( stream_t *p_access )
{
    struct addrinfo hints, *serverinfo, *server;
    access_sys_t *sys = p_access->p_sys;

    memset( &hints, 0, sizeof( hints ));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_DGRAM;

    msg_Dbg( p_access, "Attempting AMT to %s...", sys->relay);
    sys->tryAMT = 1;


    int response = vlc_getaddrinfo( sys->relay, AMT_PORT, &hints, &serverinfo );


    if( response != 0 )
    {
        msg_Err( p_access, "Could not find relay %s, reason: %s", sys->relay, gai_strerror(response) );
        goto error;
    }


    for (server = serverinfo; server != ((void*)0) && !vlc_killed(); server = server->ai_next)
    {
        struct sockaddr_in *server_addr = (struct sockaddr_in *) server->ai_addr;
        char relay_ip[INET_ADDRSTRLEN];


        if( unlikely( inet_ntop(AF_INET, &(server_addr->sin_addr), relay_ip, INET_ADDRSTRLEN) == ((void*)0) ) )
        {
            int errConv = errno;
            msg_Err(p_access, "Could not convert relay ip to binary representation: %s", gai_strerror(errConv));
            goto error;
        }


        memcpy(sys->relayDisco, relay_ip, INET_ADDRSTRLEN);
        if( unlikely( sys->relayDisco == ((void*)0) ) )
        {
            goto error;
        }

        msg_Dbg( p_access, "Trying AMT Server: %s", sys->relayDisco);


        sys->relayDiscoAddr.sin_addr = server_addr->sin_addr;

        if( amt_sockets_init( p_access ) != 0 )
            continue;


        amt_send_relay_discovery_msg( p_access, relay_ip );
        msg_Dbg( p_access, "Sent relay AMT discovery message to %s", relay_ip );

        if( !amt_rcv_relay_adv( p_access ) )
        {
            msg_Err( p_access, "Error receiving AMT relay advertisement msg from %s, skipping", relay_ip );
            goto error;
        }
        msg_Dbg( p_access, "Received AMT relay advertisement from %s", relay_ip );

        amt_send_relay_request( p_access, relay_ip );
        msg_Dbg( p_access, "Sent AMT relay request message to %s", relay_ip );

        if( !amt_rcv_relay_mem_query( p_access ) )
        {
            msg_Err( p_access, "Could not receive AMT relay membership query from %s, reason: %s", relay_ip, vlc_strerror(errno));
            goto error;
        }
        msg_Dbg( p_access, "Received AMT relay membership query from %s", relay_ip );


        if( sys->mcastSrcAddr.sin_addr.s_addr )
        {
            if( amt_joinSSM_group( p_access ) != 0 )
            {
                msg_Err( p_access, "Error joining SSM %s", vlc_strerror(errno) );
                goto error;
            }
            msg_Dbg( p_access, "Joined SSM" );
        }


        else {
            if( amt_joinASM_group( p_access ) != 0 )
            {
                msg_Err( p_access, "Error joining ASM %s", vlc_strerror(errno) );
                goto error;
            }
            msg_Dbg( p_access, "Joined ASM group" );
        }



        vlc_timer_disarm( sys->updateTimer );

        amt_send_mem_update( p_access, sys->relayDisco, 0 );
        bool eof=0;
        block_t *pkt;


        if ( !(pkt = BlockAMT( p_access, &eof )) )
        {
            msg_Err( p_access, "Unable to receive UDP packet from AMT relay %s for multicast group", relay_ip );
            continue;
        }
        else
        {
            block_Release( pkt );
            msg_Dbg( p_access, "Got UDP packet from multicast group via AMT relay %s, continuing...", relay_ip );
            break;
        }
    }


    if (server == ((void*)0))
    {
        msg_Err( p_access, "No AMT servers responding" );
        goto error;
    }


    freeaddrinfo( serverinfo );
    return 1;

error:
    vlc_timer_disarm( sys->updateTimer );
    if( serverinfo )
        freeaddrinfo( serverinfo );
    return 0;
}
