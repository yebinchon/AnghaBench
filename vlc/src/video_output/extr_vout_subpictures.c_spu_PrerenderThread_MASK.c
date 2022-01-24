#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct spu_prerender_ctx_s {scalar_t__* chroma_list; int /*<<< orphan*/  fmtdst; int /*<<< orphan*/  fmtsrc; TYPE_6__** pp_processed; int /*<<< orphan*/ * cleanuplock; } ;
struct TYPE_8__ {TYPE_3__* p; } ;
typedef  TYPE_2__ spu_t ;
struct TYPE_10__ {size_t size; TYPE_6__** data; } ;
struct TYPE_7__ {int /*<<< orphan*/  output_cond; TYPE_6__* p_processed; int /*<<< orphan*/  lock; int /*<<< orphan*/  fmtsrc; int /*<<< orphan*/  fmtdst; int /*<<< orphan*/ * chroma_list; TYPE_4__ vector; int /*<<< orphan*/  cond; } ;
struct TYPE_9__ {TYPE_1__ prerender; } ;
typedef  TYPE_3__ spu_private_t ;
struct TYPE_11__ {scalar_t__ i_start; } ;

/* Variables and functions */
 size_t SPU_CHROMALIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__**,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  spu_prerender_cleanup_routine ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct spu_prerender_ctx_s*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,size_t) ; 

__attribute__((used)) static void * FUNC14(void *priv)
{
    spu_t *spu = priv;
    spu_private_t *sys = spu->p;

    struct spu_prerender_ctx_s ctx;
    ctx.cleanuplock = &sys->prerender.lock;
    ctx.chroma_list[SPU_CHROMALIST_COUNT] = 0;
    FUNC4(&ctx.fmtsrc, 0);
    FUNC4(&ctx.fmtdst, 0);
    ctx.pp_processed = &sys->prerender.p_processed;

    FUNC9(&sys->prerender.lock);
    for( ;; )
    {
        FUNC6(spu_prerender_cleanup_routine, &ctx);
        while(!sys->prerender.vector.size || !sys->prerender.chroma_list[0])
            FUNC8(&sys->prerender.cond, &sys->prerender.lock);

        size_t i_idx = 0;
        sys->prerender.p_processed = sys->prerender.vector.data[0];
        for(size_t i=1; i<sys->prerender.vector.size; i++)
        {
             if(sys->prerender.p_processed->i_start > sys->prerender.vector.data[i]->i_start)
             {
                 sys->prerender.p_processed = sys->prerender.vector.data[i];
                 i_idx = i;
             }
        }
        FUNC13(&sys->prerender.vector, i_idx);
        FUNC0(&ctx.chroma_list, sys->prerender.chroma_list, SPU_CHROMALIST_COUNT);
        FUNC2(&ctx.fmtdst);
        FUNC2(&ctx.fmtsrc);
        FUNC3(&ctx.fmtdst, &sys->prerender.fmtdst);
        FUNC3(&ctx.fmtsrc, &sys->prerender.fmtsrc);

        FUNC10(&sys->prerender.lock);
        FUNC5();

        int canc = FUNC12();
        FUNC1(spu, sys->prerender.p_processed,
                          &ctx.fmtsrc, &ctx.fmtdst, ctx.chroma_list);
        FUNC11(canc);

        FUNC9(&sys->prerender.lock);
        sys->prerender.p_processed = NULL;
        FUNC7(&sys->prerender.output_cond);
    }

    return NULL;
}