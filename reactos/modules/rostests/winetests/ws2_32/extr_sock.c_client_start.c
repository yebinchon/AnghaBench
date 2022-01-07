
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int n_chunks; int chunk_size; int n_clients; int inet_port; int inet_addr; int sock_prot; int sock_type; } ;
typedef TYPE_3__ test_params ;
struct TYPE_11__ {int sock_flags; TYPE_3__* general; } ;
typedef TYPE_4__ client_params ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_12__ {scalar_t__ s; void* send_buf; void* recv_buf; TYPE_2__ addr; } ;
typedef TYPE_5__ client_memory ;


 int AF_INET ;
 int INFINITE ;
 scalar_t__ INVALID_SOCKET ;
 int LPTR ;
 void* LocalAlloc (int ,int) ;
 int MAX_CLIENTS ;
 int SetEvent (int ) ;
 int TRUE ;
 int TlsSetValue (int ,TYPE_5__*) ;
 scalar_t__ WSASocketA (int ,int ,int ,int *,int ,int ) ;
 int WaitForMultipleObjects (int ,int *,int ,int ) ;
 int WaitForSingleObject (int ,int ) ;
 size_t client_id ;
 int * client_ready ;
 int fill_buffer (void*,int,int) ;
 int htons (int ) ;
 int inet_addr (int ) ;
 int min (int ,int ) ;
 int ok (int,char*) ;
 int server_ready ;
 int tls ;

__attribute__((used)) static void client_start ( client_params *par )
{
    test_params *gen = par->general;
    client_memory *mem = LocalAlloc (LPTR, sizeof (client_memory));

    TlsSetValue ( tls, mem );

    WaitForSingleObject ( server_ready, INFINITE );

    mem->s = WSASocketA ( AF_INET, gen->sock_type, gen->sock_prot,
                          ((void*)0), 0, par->sock_flags );

    mem->addr.sin_family = AF_INET;
    mem->addr.sin_addr.s_addr = inet_addr ( gen->inet_addr );
    mem->addr.sin_port = htons ( gen->inet_port );

    ok ( mem->s != INVALID_SOCKET, "Client: WSASocket failed\n" );

    mem->send_buf = LocalAlloc ( LPTR, 2 * gen->n_chunks * gen->chunk_size );
    mem->recv_buf = mem->send_buf + gen->n_chunks * gen->chunk_size;
    fill_buffer ( mem->send_buf, gen->chunk_size, gen->n_chunks );

    SetEvent ( client_ready[client_id] );

    WaitForMultipleObjects ( min ( gen->n_clients, MAX_CLIENTS ), client_ready, TRUE, INFINITE );
}
