#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_11__ {TYPE_4__ ll; TYPE_3__ lr; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef  TYPE_5__ fz_quad ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_QUADS ; 
 TYPE_5__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int search_hit_count ; 
 int /*<<< orphan*/ * search_hit_quads ; 
 int /*<<< orphan*/  view_page_ctm ; 

__attribute__((used)) static void FUNC8(void)
{
	int i;

	FUNC2(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
	FUNC5(GL_BLEND);

	FUNC3(1, 0, 0, 0.4f);
	FUNC1(GL_QUADS);
	for (i = 0; i < search_hit_count; ++i)
	{
		fz_quad thit = FUNC0(search_hit_quads[i], view_page_ctm);
		FUNC7(thit.ul.x, thit.ul.y);
		FUNC7(thit.ur.x, thit.ur.y);
		FUNC7(thit.lr.x, thit.lr.y);
		FUNC7(thit.ll.x, thit.ll.y);
	}

	FUNC6();
	FUNC4(GL_BLEND);
}