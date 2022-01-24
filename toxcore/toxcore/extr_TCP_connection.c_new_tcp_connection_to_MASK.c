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
struct TYPE_7__ {int id; int /*<<< orphan*/  public_key; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__* connections; } ;
typedef  TYPE_1__ TCP_Connections ;
typedef  TYPE_2__ TCP_Connection_to ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CONN_VALID ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC3(TCP_Connections *tcp_c, const uint8_t *public_key, int id)
{
    if (FUNC1(tcp_c, public_key) != -1)
        return -1;

    int connections_number = FUNC0(tcp_c);

    if (connections_number == -1)
        return -1;

    TCP_Connection_to *con_to = &tcp_c->connections[connections_number];

    con_to->status = TCP_CONN_VALID;
    FUNC2(con_to->public_key, public_key, crypto_box_PUBLICKEYBYTES);
    con_to->id = id;

    return connections_number;
}