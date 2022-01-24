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
struct TYPE_3__ {int options; } ;
typedef  TYPE_1__ mp4mux_handle_t ;

/* Variables and functions */
 int QUICKTIME ; 
 int USE64BITEXT ; 

void FUNC0(mp4mux_handle_t *h)
{
    /* FIXME FIXME
     * Quicktime actually doesn't like the 64 bits extensions !!! */
    if(h->options & QUICKTIME)
        return;

    h->options |= USE64BITEXT;
}