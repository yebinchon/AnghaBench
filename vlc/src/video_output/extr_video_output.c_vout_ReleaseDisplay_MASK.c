#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  configuration; int /*<<< orphan*/  src_fmt; int /*<<< orphan*/  chain_static; int /*<<< orphan*/  chain_interactive; } ;
struct TYPE_10__ {int /*<<< orphan*/  original; int /*<<< orphan*/ * clock; int /*<<< orphan*/  (* mouse_event ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ spu; int /*<<< orphan*/  mouse_opaque; int /*<<< orphan*/ * display_pool; int /*<<< orphan*/ * decoder_fifo; TYPE_1__ filter; int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; int /*<<< orphan*/ * spu_blend; } ;
typedef  TYPE_3__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;

    FUNC1(sys->display != NULL);

    if (sys->spu_blend != NULL)
        FUNC2(sys->spu_blend);

    /* Destroy the rendering display */
    if (sys->display_pool != NULL)
        FUNC12(vout, true, INT64_MAX);

    FUNC9(&sys->display_lock);
    FUNC11(vout, sys->display);
    sys->display = NULL;
    FUNC10(&sys->display_lock);

    /* Destroy the video filters */
    FUNC0(vout);
    FUNC3(sys->filter.chain_interactive);
    FUNC3(sys->filter.chain_static);
    FUNC8(&sys->filter.src_fmt);
    FUNC4(sys->filter.configuration);

    if (sys->decoder_fifo != NULL)
    {
        FUNC5(sys->decoder_fifo);
        sys->decoder_fifo = NULL;
    }
    FUNC1(sys->display_pool == NULL);

    if (sys->mouse_event)
        sys->mouse_event(NULL, sys->mouse_opaque);

    if (sys->spu)
        FUNC6(sys->spu);
    sys->mouse_event = NULL;
    sys->clock = NULL;
    FUNC8(&sys->original);
}