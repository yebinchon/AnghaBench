#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_7__ {int i_size; scalar_t__* p_elems; } ;
struct TYPE_5__ {TYPE_4__ extra; } ;
struct TYPE_6__ {TYPE_1__ brands; } ;
typedef  TYPE_2__ mp4mux_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__,scalar_t__) ; 

void FUNC1(mp4mux_handle_t *h, vlc_fourcc_t b)
{
    for(int i=0; i<h->brands.extra.i_size; i++)
        if(h->brands.extra.p_elems[i] == b)
            return;
    FUNC0(h->brands.extra, b);
}