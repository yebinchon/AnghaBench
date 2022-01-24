#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {unsigned int custom_uint; TYPE_1__* custom_object; } ;
struct TYPE_6__ {int /*<<< orphan*/  tcp_oob_callback_object; int /*<<< orphan*/  (* tcp_oob_callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  TCP_con ;
typedef  TYPE_1__ TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;
typedef  TYPE_2__ TCP_Client_Connection ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *object, const uint8_t *public_key, const uint8_t *data, uint16_t length)
{
    if (length == 0)
        return -1;

    TCP_Client_Connection *TCP_client_con = object;
    TCP_Connections *tcp_c = TCP_client_con->custom_object;

    unsigned int tcp_connections_number = TCP_client_con->custom_uint;
    TCP_con *tcp_con = FUNC2(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    /* TODO: optimize */
    int connections_number = FUNC0(tcp_c, public_key);

    TCP_Connection_to *con_to = FUNC1(tcp_c, connections_number);

    if (con_to && FUNC4(con_to, tcp_connections_number)) {
        return FUNC5(object, connections_number, 0, data, length);
    } else {
        if (tcp_c->tcp_oob_callback)
            tcp_c->tcp_oob_callback(tcp_c->tcp_oob_callback_object, public_key, tcp_connections_number, data, length);
    }

    return 0;
}