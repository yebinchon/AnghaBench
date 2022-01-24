#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  TCP_Connections ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC2(TCP_Connections *tcp_c, IP_Port ip_port, const uint8_t *relay_pk)
{
    int tcp_connections_number = FUNC1(tcp_c, relay_pk);

    if (tcp_connections_number != -1)
        return -1;

    if (FUNC0(tcp_c, ip_port, relay_pk) == -1)
        return -1;

    return 0;
}