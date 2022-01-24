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
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_pane* wp; } ;
struct screen_write_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  FUNC0 (char*,struct window_pane*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*) ; 

__attribute__((used)) static void
FUNC6(struct window_mode_entry *wme, const char *prefix,
    void *buf, size_t len)
{
	struct window_pane	*wp = wme->wp;
	struct screen_write_ctx	 ctx;

	if (FUNC1(global_options, "set-clipboard") != 0) {
		FUNC4(&ctx, wp, NULL);
		FUNC3(&ctx, buf, len);
		FUNC5(&ctx);
		FUNC0("pane-set-clipboard", wp);
	}

	FUNC2(prefix, buf, len);
}