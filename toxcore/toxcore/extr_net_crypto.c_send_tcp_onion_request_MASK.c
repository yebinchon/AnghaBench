#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  tcp_mutex; int /*<<< orphan*/  tcp_c; } ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC3(Net_Crypto *c, unsigned int tcp_connections_number, const uint8_t *data, uint16_t length)
{
    FUNC0(&c->tcp_mutex);
    int ret = FUNC2(c->tcp_c, tcp_connections_number, data, length);
    FUNC1(&c->tcp_mutex);

    return ret;
}