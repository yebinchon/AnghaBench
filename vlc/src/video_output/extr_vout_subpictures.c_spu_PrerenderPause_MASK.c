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
struct TYPE_4__ {int /*<<< orphan*/  lock; scalar_t__* chroma_list; int /*<<< orphan*/  output_cond; scalar_t__ p_processed; } ;
struct TYPE_5__ {TYPE_1__ prerender; } ;
typedef  TYPE_2__ spu_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(spu_private_t *sys)
{
    FUNC1(&sys->prerender.lock);
    while(sys->prerender.p_processed)
        FUNC0(&sys->prerender.output_cond, &sys->prerender.lock);
    sys->prerender.chroma_list[0] = 0;
    FUNC2(&sys->prerender.lock);
}