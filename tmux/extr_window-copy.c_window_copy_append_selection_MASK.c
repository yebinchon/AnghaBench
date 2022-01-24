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
struct paste_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct window_pane*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (struct paste_buffer*,size_t*) ; 
 struct paste_buffer* FUNC6 (char const**) ; 
 scalar_t__ FUNC7 (char*,size_t,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct screen_write_ctx*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct screen_write_ctx*) ; 
 char* FUNC11 (struct window_mode_entry*,size_t*) ; 
 char* FUNC12 (char*,size_t) ; 

__attribute__((used)) static void
FUNC13(struct window_mode_entry *wme)
{
	struct window_pane		*wp = wme->wp;
	char				*buf;
	struct paste_buffer		*pb;
	const char			*bufdata, *bufname = NULL;
	size_t				 len, bufsize;
	struct screen_write_ctx		 ctx;

	buf = FUNC11(wme, &len);
	if (buf == NULL)
		return;

	if (FUNC4(global_options, "set-clipboard") != 0) {
		FUNC9(&ctx, wp, NULL);
		FUNC8(&ctx, buf, len);
		FUNC10(&ctx);
		FUNC3("pane-set-clipboard", wp);
	}

	pb = FUNC6(&bufname);
	if (pb != NULL) {
		bufdata = FUNC5(pb, &bufsize);
		buf = FUNC12(buf, len + bufsize);
		FUNC2(buf + bufsize, buf, len);
		FUNC1(buf, bufdata, bufsize);
		len += bufsize;
	}
	if (FUNC7(buf, len, bufname, NULL) != 0)
		FUNC0(buf);
}