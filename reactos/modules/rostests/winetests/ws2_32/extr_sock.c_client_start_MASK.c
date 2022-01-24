#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int n_chunks; int chunk_size; int /*<<< orphan*/  n_clients; int /*<<< orphan*/  inet_port; int /*<<< orphan*/  inet_addr; int /*<<< orphan*/  sock_prot; int /*<<< orphan*/  sock_type; } ;
typedef  TYPE_3__ test_params ;
struct TYPE_11__ {int /*<<< orphan*/  sock_flags; TYPE_3__* general; } ;
typedef  TYPE_4__ client_params ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct TYPE_12__ {scalar_t__ s; void* send_buf; void* recv_buf; TYPE_2__ addr; } ;
typedef  TYPE_5__ client_memory ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  LPTR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MAX_CLIENTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t client_id ; 
 int /*<<< orphan*/ * client_ready ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  server_ready ; 
 int /*<<< orphan*/  tls ; 

__attribute__((used)) static void FUNC11 ( client_params *par )
{
    test_params *gen = par->general;
    client_memory *mem = FUNC0 (LPTR, sizeof (client_memory));

    FUNC2 ( tls, mem );

    FUNC5 ( server_ready, INFINITE );

    mem->s = FUNC3 ( AF_INET, gen->sock_type, gen->sock_prot,
                          NULL, 0, par->sock_flags );

    mem->addr.sin_family = AF_INET;
    mem->addr.sin_addr.s_addr = FUNC8 ( gen->inet_addr );
    mem->addr.sin_port = FUNC7 ( gen->inet_port );

    FUNC10 ( mem->s != INVALID_SOCKET, "Client: WSASocket failed\n" );

    mem->send_buf = FUNC0 ( LPTR, 2 * gen->n_chunks * gen->chunk_size );
    mem->recv_buf = mem->send_buf + gen->n_chunks * gen->chunk_size;
    FUNC6 ( mem->send_buf, gen->chunk_size, gen->n_chunks );

    FUNC1 ( client_ready[client_id] );
    /* Wait for the other clients to come up */
    FUNC4 ( FUNC9 ( gen->n_clients, MAX_CLIENTS ), client_ready, TRUE, INFINITE );
}