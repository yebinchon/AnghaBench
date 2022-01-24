#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * connections; } ;
typedef  TYPE_1__ TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*,int) ; 

__attribute__((used)) static TCP_Connection_to *FUNC1(const TCP_Connections *tcp_c, int connections_number)
{
    if (FUNC0(tcp_c, connections_number))
        return 0;

    return &tcp_c->connections[connections_number];
}