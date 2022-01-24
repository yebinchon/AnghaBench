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
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/ * chroma_list; int /*<<< orphan*/  fmtsrc; int /*<<< orphan*/  fmtdst; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef  TYPE_2__ spu_private_t ;

/* Variables and functions */
 size_t SPU_CHROMALIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(spu_private_t *sys,
                              const video_format_t *fmt_dst,
                              const video_format_t *fmt_src,
                              const vlc_fourcc_t *chroma_list)
{
    FUNC4(&sys->prerender.lock);
    if(!FUNC2(fmt_dst, &sys->prerender.fmtdst))
    {
        FUNC0(&sys->prerender.fmtdst);
        FUNC1(&sys->prerender.fmtdst, fmt_dst);
    }
    if(!FUNC2(fmt_src, &sys->prerender.fmtsrc))
    {
        FUNC0(&sys->prerender.fmtsrc);
        FUNC1(&sys->prerender.fmtsrc, fmt_src);
    }

    for(size_t i=0; i<SPU_CHROMALIST_COUNT; i++)
    {
        sys->prerender.chroma_list[i] = chroma_list[i];
        if(!chroma_list[i])
            break;
    }

    FUNC3(&sys->prerender.cond);
    FUNC5(&sys->prerender.lock);
}