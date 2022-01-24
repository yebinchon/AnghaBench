#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  tcp_server_port; } ;
struct TYPE_6__ {TYPE_1__ options; scalar_t__ tcp_server; } ;
typedef  TYPE_2__ Tox ;
typedef  int /*<<< orphan*/  TOX_ERR_GET_PORT ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOX_ERR_GET_PORT_NOT_BOUND ; 
 int /*<<< orphan*/  TOX_ERR_GET_PORT_OK ; 

uint16_t FUNC1(const Tox *tox, TOX_ERR_GET_PORT *error)
{
    const Messenger *m = tox;

    if (m->tcp_server) {
        FUNC0(error, TOX_ERR_GET_PORT_OK);
        return m->options.tcp_server_port;
    } else {
        FUNC0(error, TOX_ERR_GET_PORT_NOT_BOUND);
        return 0;
    }
}