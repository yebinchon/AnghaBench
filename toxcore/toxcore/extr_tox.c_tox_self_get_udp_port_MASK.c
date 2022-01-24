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
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {TYPE_1__* net; } ;
typedef  TYPE_2__ Tox ;
struct TYPE_5__ {int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  TOX_ERR_GET_PORT ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOX_ERR_GET_PORT_NOT_BOUND ; 
 int /*<<< orphan*/  TOX_ERR_GET_PORT_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

uint16_t FUNC2(const Tox *tox, TOX_ERR_GET_PORT *error)
{
    const Messenger *m = tox;
    uint16_t port = FUNC1(m->net->port);

    if (port) {
        FUNC0(error, TOX_ERR_GET_PORT_OK);
    } else {
        FUNC0(error, TOX_ERR_GET_PORT_NOT_BOUND);
    }

    return port;
}