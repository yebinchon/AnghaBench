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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock_sink; int /*<<< orphan*/  i_seq_sent_next; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

uint16_t FUNC2( sout_stream_id_sys_t *id )
{
    /* This will return values for the next packet. */
    uint16_t seq;

    FUNC0( &id->lock_sink );
    seq = id->i_seq_sent_next;
    FUNC1( &id->lock_sink );

    return seq;
}