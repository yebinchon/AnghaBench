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
typedef  int /*<<< orphan*/  TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 

unsigned int FUNC2(TCP_Connections *tcp_c, int connections_number)
{
    TCP_Connection_to *con_to = FUNC0(tcp_c, connections_number);

    if (!con_to)
        return 0;

    return FUNC1(con_to);
}