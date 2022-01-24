#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* nodes; } ;
typedef  TYPE_2__ stb_matcher ;
struct TYPE_5__ {int /*<<< orphan*/ * eps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(stb_matcher *matcher, int from, int to)
{
   FUNC0(from != to);
   if (matcher->nodes[from].eps == NULL)
      FUNC1((void **) &matcher->nodes[from].eps, matcher);
   FUNC2(matcher->nodes[from].eps, to);
}