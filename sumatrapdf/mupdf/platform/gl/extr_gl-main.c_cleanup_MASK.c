#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fzpage ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  outline ; 
 int /*<<< orphan*/  page_text ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  seps ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(void)
{
	FUNC11();
	FUNC10();

	FUNC12();

#ifndef NDEBUG
	if (FUNC0(FUNC9("FZ_DEBUG_STORE")))
		FUNC1(ctx);
#endif

	FUNC8(ctx, page_text);
	FUNC7(ctx, seps);
	FUNC4(ctx, links);
	FUNC6(ctx, fzpage);
	FUNC5(ctx, outline);
	FUNC3(ctx, doc);
	FUNC2(ctx);
}