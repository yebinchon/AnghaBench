#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  void* vlc_tick_t ;
struct TYPE_16__ {scalar_t__ i_channel; void* i_stop; void* i_start; TYPE_2__* p_region; } ;
typedef  TYPE_1__ subpicture_t ;
struct TYPE_17__ {int /*<<< orphan*/ * p_private; struct TYPE_17__* p_next; } ;
typedef  TYPE_2__ subpicture_region_t ;
struct spu_channel {int /*<<< orphan*/  rate; scalar_t__ clock; } ;
struct TYPE_18__ {TYPE_4__* p; } ;
typedef  TYPE_3__ spu_t ;
struct TYPE_19__ {char* filter_chain_update; char* source_chain_update; int /*<<< orphan*/  lock; int /*<<< orphan*/  filter_chain_lock; int /*<<< orphan*/  filter_chain; int /*<<< orphan*/  source_chain_current; scalar_t__ vout; } ;
typedef  TYPE_4__ spu_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  SubFilterAddProxyCallbacks ; 
 int /*<<< orphan*/  SubFilterDelProxyCallbacks ; 
 scalar_t__ VOUT_SPU_CHANNEL_OSD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 struct spu_channel* FUNC9 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_1__*) ; 
 scalar_t__ FUNC11 (struct spu_channel*,TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,void*,void**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 void* FUNC17 () ; 

void FUNC18(spu_t *spu, subpicture_t *subpic)
{
    spu_private_t *sys = spu->p;

    /* Update sub-filter chain */
    FUNC15(&sys->lock);
    char *chain_update = sys->filter_chain_update;
    sys->filter_chain_update = NULL;
    FUNC16(&sys->lock);

    bool is_left_empty = false;

    FUNC15(&sys->filter_chain_lock);
    if (chain_update) {
        if (*chain_update) {
            if (sys->vout)
                FUNC3(sys->filter_chain,
                                     SubFilterDelProxyCallbacks,
                                     sys->vout);
            FUNC2(sys->filter_chain);

            FUNC1(spu->p->filter_chain, chain_update);
            if (sys->vout)
                FUNC3(sys->filter_chain,
                                     SubFilterAddProxyCallbacks,
                                     sys->vout);
        }
        else
            FUNC2(sys->filter_chain);

        /* "sub-source"  was formerly "sub-filter", so now the "sub-filter"
        configuration may contain sub-filters or sub-sources configurations.
        if the filters chain was left empty it may indicate that it's a sub-source configuration */
        is_left_empty = FUNC4(spu->p->filter_chain);
    }
    FUNC16(&sys->filter_chain_lock);

    if (is_left_empty) {
        /* try to use the configuration as a sub-source configuration,
           but only if there is no 'source_chain_update' value and
           if only if 'chain_update' has a value */
        if (chain_update && *chain_update) {
            FUNC15(&sys->lock);
            if (!sys->source_chain_update || !*sys->source_chain_update) {
                FUNC6(sys->source_chain_update);
                sys->source_chain_update = chain_update;
                sys->source_chain_current = FUNC12(chain_update);
                chain_update = NULL;
            }
            FUNC16(&sys->lock);
        }
    }

    FUNC6(chain_update);

    /* Run filter chain on the new subpicture */
    FUNC15(&sys->filter_chain_lock);
    subpic = FUNC5(spu->p->filter_chain, subpic);
    FUNC16(&sys->filter_chain_lock);
    if (!subpic || subpic->i_channel < 0)
    {
        if (subpic)
            FUNC13(subpic);
        return;
    }

    /* SPU_DEFAULT_CHANNEL always reset itself */
    if (subpic->i_channel == VOUT_SPU_CHANNEL_OSD)
        FUNC8(spu, VOUT_SPU_CHANNEL_OSD);

    /* p_private is for spu only and cannot be non NULL here */
    for (subpicture_region_t *r = subpic->p_region; r != NULL; r = r->p_next)
        FUNC0(r->p_private == NULL);

    /* */
    FUNC15(&sys->lock);
    struct spu_channel *channel = FUNC9(spu, subpic->i_channel);


    /* Convert all spu ts */
    vlc_tick_t orgstart = subpic->i_start;
    vlc_tick_t orgstop = subpic->i_stop;
    if (channel->clock)
    {
        vlc_tick_t system_now = FUNC17();
        vlc_tick_t times[2] = { orgstart, orgstop };
        FUNC14(channel->clock, system_now,
                                       times, 2, channel->rate);
        subpic->i_start = times[0];
        subpic->i_stop = times[1];
    }

    if (FUNC11(channel, subpic, orgstart, orgstop))
    {
        FUNC16(&sys->lock);
        FUNC7(spu, "subpicture heap full");
        FUNC13(subpic);
        return;
    }
    FUNC10(sys, subpic);
    FUNC16(&sys->lock);
}