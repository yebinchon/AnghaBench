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
struct TYPE_6__ {scalar_t__ flags; int /*<<< orphan*/ * post_stream; scalar_t__ connection; scalar_t__ request; TYPE_1__* vtbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* close_connection ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ Protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(Protocol *protocol)
{
    protocol->vtbl->close_connection(protocol);

    if(protocol->request)
        FUNC1(protocol->request);

    if(protocol->connection)
        FUNC1(protocol->connection);

    if(protocol->post_stream) {
        FUNC0(protocol->post_stream);
        protocol->post_stream = NULL;
    }

    protocol->flags = 0;
}