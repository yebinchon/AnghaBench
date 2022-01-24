#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ctx {TYPE_1__* vlc; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_libvlc_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC16 (struct ctx*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ctx*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ctx*) ; 

int
FUNC19(void)
{
    FUNC7();

    struct ctx ctx;

    /* Test with --aout=none --vout=none */
    FUNC2(&ctx, false);
    FUNC9(&ctx);
    FUNC1(&ctx);
    FUNC2(&ctx, true);

    FUNC10(&ctx); /* Must be the first test */

    FUNC14(&ctx);
    FUNC8(&ctx);
    FUNC13(&ctx);
    FUNC11(&ctx);
    FUNC3(&ctx);
    FUNC4(&ctx);
    FUNC6(&ctx);
    FUNC18(&ctx);
    FUNC16(&ctx, true);
    FUNC16(&ctx, false);
    FUNC17(&ctx, true);
    FUNC17(&ctx, false);
    FUNC12(&ctx);
    FUNC15(&ctx);

    FUNC5(FUNC0(ctx.vlc->p_libvlc_int), true);
    FUNC5(FUNC0(ctx.vlc->p_libvlc_int), false);

    FUNC1(&ctx);
    return 0;
}