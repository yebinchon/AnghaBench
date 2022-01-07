
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int s_addr; } ;
struct sockaddr_in {void* sin_family; void* sin_port; TYPE_5__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
typedef int rcvAddr ;
typedef int enable ;
struct TYPE_7__ {void* sin_port; void* sin_family; } ;
struct TYPE_9__ {int sAMT; int sQuery; TYPE_1__ relayDiscoAddr; } ;
typedef TYPE_3__ access_sys_t ;


 void* AF_INET ;
 int AMT_PORT ;
 int INADDR_ANY ;
 int IPPROTO_UDP ;
 int LOCAL_LOOPBACK ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int errno ;
 void* htons (int) ;
 int inet_pton (void*,int ,TYPE_5__*) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int net_Close (int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 void* vlc_socket (void*,int ,int ,int) ;
 int vlc_strerror (int ) ;

__attribute__((used)) static int amt_sockets_init( stream_t *p_access )
{
    struct sockaddr_in rcvAddr;
    access_sys_t *sys = p_access->p_sys;
    memset( &rcvAddr, 0, sizeof(struct sockaddr_in) );
    int enable = 0, res = 0;


    sys->relayDiscoAddr.sin_family = AF_INET;
    sys->relayDiscoAddr.sin_port = htons( AMT_PORT );


    sys->sAMT = vlc_socket( AF_INET, SOCK_DGRAM, IPPROTO_UDP, 1 );
    if( sys->sAMT == -1 )
    {
        msg_Err( p_access, "Failed to create UDP socket" );
        goto error;
    }

    res = setsockopt(sys->sAMT, SOL_SOCKET, SO_REUSEADDR, &enable, sizeof(enable));
    if(res < 0)
    {
        msg_Err( p_access, "Couldn't make socket reusable");
        goto error;
    }

    rcvAddr.sin_family = AF_INET;
    rcvAddr.sin_port = htons( 0 );
    rcvAddr.sin_addr.s_addr = INADDR_ANY;

    if( bind(sys->sAMT, (struct sockaddr *)&rcvAddr, sizeof(rcvAddr) ) != 0 )
    {
        msg_Err( p_access, "Failed to bind UDP socket error: %s", vlc_strerror(errno) );
        goto error;
    }

    sys->sQuery = vlc_socket( AF_INET, SOCK_DGRAM, IPPROTO_UDP, 1 );
    if( sys->sQuery == -1 )
    {
        msg_Err( p_access, "Failed to create query socket" );
        goto error;
    }


    struct sockaddr_in stLocalAddr =
    {
        .sin_family = AF_INET,
        .sin_port = htons( 0 ),
        .sin_addr.s_addr = INADDR_ANY,
    };

    if( bind(sys->sQuery, (struct sockaddr *)&stLocalAddr, sizeof(struct sockaddr) ) != 0 )
    {
        msg_Err( p_access, "Failed to bind query socket" );
        goto error;
    }

    struct sockaddr_in stSvrAddr =
    {
        .sin_family = AF_INET,
        .sin_port = htons( 9124 ),
    };

    res = inet_pton( AF_INET, LOCAL_LOOPBACK, &stSvrAddr.sin_addr );
    if( res != 1 )
    {
        msg_Err( p_access, "Could not convert loopback address" );
        goto error;
    }


    return 0;

error:
    if( sys->sAMT != -1 )
    {
        net_Close( sys->sAMT );
        sys->sAMT = -1;
    }

    if( sys->sQuery != -1 )
    {
        net_Close( sys->sQuery );
        sys->sQuery = -1;
    }
    return -1;
}
