
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ sock_type; int n_chunks; int chunk_size; int inet_port; int inet_addr; int sock_prot; } ;
typedef TYPE_4__ test_params ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int sock_flags; TYPE_4__* general; } ;
typedef TYPE_5__ server_params ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_11__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_14__ {scalar_t__ s; TYPE_3__ addr; TYPE_2__* sock; } ;
typedef TYPE_6__ server_memory ;
struct TYPE_10__ {scalar_t__ n_sent; scalar_t__ n_recvd; void* buf; scalar_t__ s; } ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 int LPTR ;
 void* LocalAlloc (int ,int) ;
 int MAX_CLIENTS ;
 scalar_t__ SOCK_STREAM ;
 int TlsSetValue (int ,TYPE_6__*) ;
 scalar_t__ WSASocketA (int ,scalar_t__,int ,int *,int ,int ) ;
 int do_bind (scalar_t__,struct sockaddr*,int) ;
 int htons (int ) ;
 int inet_addr (int ) ;
 int ok (int,char*) ;
 int tls ;

__attribute__((used)) static void server_start ( server_params *par )
{
    int i;
    test_params *gen = par->general;
    server_memory *mem = LocalAlloc ( LPTR, sizeof ( server_memory ) );

    TlsSetValue ( tls, mem );
    mem->s = WSASocketA ( AF_INET, gen->sock_type, gen->sock_prot,
                          ((void*)0), 0, par->sock_flags );
    ok ( mem->s != INVALID_SOCKET, "Server: WSASocket failed\n" );

    mem->addr.sin_family = AF_INET;
    mem->addr.sin_addr.s_addr = inet_addr ( gen->inet_addr );
    mem->addr.sin_port = htons ( gen->inet_port );

    for (i = 0; i < MAX_CLIENTS; i++)
    {
        mem->sock[i].s = INVALID_SOCKET;
        mem->sock[i].buf = LocalAlloc ( LPTR, gen->n_chunks * gen->chunk_size );
        mem->sock[i].n_recvd = 0;
        mem->sock[i].n_sent = 0;
    }

    if ( gen->sock_type == SOCK_STREAM )
        do_bind ( mem->s, (struct sockaddr*) &mem->addr, sizeof (mem->addr) );
}
