#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {unsigned int custom_uint; int /*<<< orphan*/ * custom_object; } ;
struct TYPE_4__ {int /*<<< orphan*/  connection; } ;
typedef  TYPE_1__ TCP_con ;
typedef  int /*<<< orphan*/  TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;
typedef  TYPE_2__ TCP_Client_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CONNECTIONS_STATUS_REGISTERED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *object, uint8_t connection_id, const uint8_t *public_key)
{
    TCP_Client_Connection *TCP_client_con = object;
    TCP_Connections *tcp_c = TCP_client_con->custom_object;

    unsigned int tcp_connections_number = TCP_client_con->custom_uint;
    TCP_con *tcp_con = FUNC2(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    int connections_number = FUNC0(tcp_c, public_key);

    if (connections_number == -1)
        return -1;

    TCP_Connection_to *con_to = FUNC1(tcp_c, connections_number);

    if (con_to == NULL)
        return -1;

    if (FUNC4(con_to, tcp_connections_number, TCP_CONNECTIONS_STATUS_REGISTERED, connection_id) == -1)
        return -1;

    FUNC3(tcp_con->connection, connection_id, connections_number);

    return 0;
}