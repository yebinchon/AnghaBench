#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  service_data_hdlr_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_callback; void* priv; } ;
typedef  TYPE_1__ cea708_demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 

cea708_demux_t * FUNC2( void *priv, service_data_hdlr_t hdlr )
{
    cea708_demux_t *h = FUNC1( sizeof(cea708_demux_t) );
    if( h )
    {
        h->priv = priv;
        h->p_callback = hdlr;
        FUNC0( h );
    }
    return h;
}