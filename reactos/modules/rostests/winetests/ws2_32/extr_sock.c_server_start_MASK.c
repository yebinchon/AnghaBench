#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ sock_type; int n_chunks; int chunk_size; int /*<<< orphan*/  inet_port; int /*<<< orphan*/  inet_addr; int /*<<< orphan*/  sock_prot; } ;
typedef  TYPE_4__ test_params ;
struct sockaddr {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  sock_flags; TYPE_4__* general; } ;
typedef  TYPE_5__ server_params ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_11__ {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct TYPE_14__ {scalar_t__ s; TYPE_3__ addr; TYPE_2__* sock; } ;
typedef  TYPE_6__ server_memory ;
struct TYPE_10__ {scalar_t__ n_sent; scalar_t__ n_recvd; void* buf; scalar_t__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  LPTR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MAX_CLIENTS ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  tls ; 

__attribute__((used)) static void FUNC7 ( server_params *par )
{
    int i;
    test_params *gen = par->general;
    server_memory *mem = FUNC0 ( LPTR, sizeof ( server_memory ) );

    FUNC1 ( tls, mem );
    mem->s = FUNC2 ( AF_INET, gen->sock_type, gen->sock_prot,
                          NULL, 0, par->sock_flags );
    FUNC6 ( mem->s != INVALID_SOCKET, "Server: WSASocket failed\n" );

    mem->addr.sin_family = AF_INET;
    mem->addr.sin_addr.s_addr = FUNC5 ( gen->inet_addr );
    mem->addr.sin_port = FUNC4 ( gen->inet_port );

    for (i = 0; i < MAX_CLIENTS; i++)
    {
        mem->sock[i].s = INVALID_SOCKET;
        mem->sock[i].buf = FUNC0 ( LPTR, gen->n_chunks * gen->chunk_size );
        mem->sock[i].n_recvd = 0;
        mem->sock[i].n_sent = 0;
    }

    if ( gen->sock_type == SOCK_STREAM )
        FUNC3 ( mem->s, (struct sockaddr*) &mem->addr, sizeof (mem->addr) );
}