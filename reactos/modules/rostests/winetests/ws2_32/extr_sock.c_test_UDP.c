
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_6__ {int sin_port; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sock_info {TYPE_3__ peer; int s; TYPE_2__ addr; } ;
typedef int buf ;


 int AF_INET ;
 int INVALID_SOCKET ;
 int NUM_UDP_PEERS ;
 int SERVERIP ;
 int SERVERPORT ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int do_bind (int ,struct sockaddr*,int) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ htons (int ) ;
 int inet_addr (int ) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int memcpy (char*,scalar_t__*,int) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int ,char*,int,int ,struct sockaddr*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void test_UDP(void)
{




    struct sock_info peer[NUM_UDP_PEERS];
    char buf[16];
    int ss, i, n_recv, n_sent;

    memset (buf,0,sizeof(buf));
    for ( i = NUM_UDP_PEERS - 1; i >= 0; i-- ) {
        ok ( ( peer[i].s = socket ( AF_INET, SOCK_DGRAM, 0 ) ) != INVALID_SOCKET, "UDP: socket failed\n" );

        peer[i].addr.sin_family = AF_INET;
        peer[i].addr.sin_addr.s_addr = inet_addr ( SERVERIP );

        if ( i == 0 ) {
            peer[i].addr.sin_port = htons ( SERVERPORT );
        } else {
            peer[i].addr.sin_port = htons ( 0 );
        }

        do_bind ( peer[i].s, (struct sockaddr *) &peer[i].addr, sizeof( peer[i].addr ) );


        ss = sizeof ( peer[i].addr );
        ok ( getsockname ( peer[i].s, (struct sockaddr *) &peer[i].addr, &ss ) != SOCKET_ERROR, "UDP: could not getsockname()\n" );
        ok ( peer[i].addr.sin_port != htons ( 0 ), "UDP: bind() did not associate port\n" );
    }


    ok ( peer[0].addr.sin_port == htons ( SERVERPORT ), "UDP: getsockname returned incorrect peer port\n" );

    for ( i = 1; i < NUM_UDP_PEERS; i++ ) {

        memcpy( buf, &peer[i].addr.sin_port, sizeof(peer[i].addr.sin_port) );
        n_sent = sendto ( peer[i].s, buf, sizeof(buf), 0, (struct sockaddr*) &peer[0].addr, sizeof(peer[0].addr) );
        ok ( n_sent == sizeof(buf), "UDP: sendto() sent wrong amount of data or socket error: %d\n", n_sent );
    }

    for ( i = 1; i < NUM_UDP_PEERS; i++ ) {
        n_recv = recvfrom ( peer[0].s, buf, sizeof(buf), 0,(struct sockaddr *) &peer[0].peer, &ss );
        ok ( n_recv == sizeof(buf), "UDP: recvfrom() received wrong amount of data or socket error: %d\n", n_recv );
        ok ( memcmp ( &peer[0].peer.sin_port, buf, sizeof(peer[0].addr.sin_port) ) == 0, "UDP: port numbers do not match\n" );
    }
}
