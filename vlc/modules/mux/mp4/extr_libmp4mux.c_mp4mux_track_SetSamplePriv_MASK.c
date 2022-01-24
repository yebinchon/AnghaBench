#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t i_data; int /*<<< orphan*/ * p_data; } ;
struct TYPE_5__ {TYPE_1__ sample_priv; } ;
typedef  TYPE_2__ mp4mux_trackinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

void FUNC3(mp4mux_trackinfo_t *t,
                                const uint8_t *p_data, size_t i_data)
{
    if(t->sample_priv.p_data)
    {
        FUNC0(t->sample_priv.p_data);
        t->sample_priv.p_data = NULL;
        t->sample_priv.i_data = 0;
    }

    if(p_data && i_data)
    {
        t->sample_priv.p_data = FUNC1(i_data);
        if(i_data)
        {
            FUNC2(t->sample_priv.p_data, p_data, i_data);
            t->sample_priv.i_data = i_data;
        }
    }
}