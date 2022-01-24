#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* p; } ;
typedef  TYPE_2__ spu_t ;
struct TYPE_8__ {int /*<<< orphan*/  fmtsrc; int /*<<< orphan*/  fmtdst; int /*<<< orphan*/  vector; int /*<<< orphan*/  output_cond; int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {size_t size; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {TYPE_1__ prerender; int /*<<< orphan*/  lock; TYPE_4__ channels; int /*<<< orphan*/  filter_chain_update; int /*<<< orphan*/  source_chain_update; int /*<<< orphan*/  filter_chain_lock; int /*<<< orphan*/  filter_chain_current; int /*<<< orphan*/  filter_chain; TYPE_2__* vout; int /*<<< orphan*/  source_chain_current; int /*<<< orphan*/  source_chain; scalar_t__ scale; scalar_t__ scale_yuvp; int /*<<< orphan*/  textlock; scalar_t__ text; } ;
typedef  TYPE_3__ spu_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SubFilterDelProxyCallbacks ; 
 int /*<<< orphan*/  SubSourceClean ; 
 int /*<<< orphan*/  SubSourceDelProxyCallbacks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC10(spu_t *spu)
{
    spu_private_t *sys = spu->p;

    if (sys->text)
        FUNC0(sys->text);
    FUNC7(&sys->textlock);

    if (sys->scale_yuvp)
        FUNC0(sys->scale_yuvp);

    if (sys->scale)
        FUNC0(sys->scale);

    FUNC2(sys->source_chain, SubSourceClean, spu);
    if (sys->vout)
        FUNC2(sys->source_chain,
                             SubSourceDelProxyCallbacks, sys->vout);
    FUNC1(sys->source_chain);
    FUNC3(sys->source_chain_current);
    if (sys->vout)
        FUNC2(sys->filter_chain,
                             SubFilterDelProxyCallbacks, sys->vout);
    FUNC1(sys->filter_chain);
    FUNC3(sys->filter_chain_current);
    FUNC7(&sys->filter_chain_lock);
    FUNC3(sys->source_chain_update);
    FUNC3(sys->filter_chain_update);

    /* Destroy all remaining subpictures */
    for (size_t i = 0; i < sys->channels.size; ++i)
        FUNC4(sys, &sys->channels.data[i]);

    FUNC9(&sys->channels);

    FUNC7(&sys->lock);

    FUNC7(&sys->prerender.lock);
    FUNC6(&sys->prerender.cond);
    FUNC6(&sys->prerender.output_cond);
    FUNC8(&sys->prerender.vector);
    FUNC5(&sys->prerender.fmtdst);
    FUNC5(&sys->prerender.fmtsrc);
}