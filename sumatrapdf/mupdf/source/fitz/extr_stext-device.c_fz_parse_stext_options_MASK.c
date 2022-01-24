#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ fz_stext_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_STEXT_INHIBIT_SPACES ; 
 int /*<<< orphan*/  FZ_STEXT_PRESERVE_IMAGES ; 
 int /*<<< orphan*/  FZ_STEXT_PRESERVE_LIGATURES ; 
 int /*<<< orphan*/  FZ_STEXT_PRESERVE_WHITESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,char*,char const**) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

fz_stext_options *
FUNC3(fz_context *ctx, fz_stext_options *opts, const char *string)
{
	const char *val;

	FUNC2(opts, 0, sizeof *opts);

	if (FUNC0(ctx, string, "preserve-ligatures", &val) && FUNC1(val, "yes"))
		opts->flags |= FZ_STEXT_PRESERVE_LIGATURES;
	if (FUNC0(ctx, string, "preserve-whitespace", &val) && FUNC1(val, "yes"))
		opts->flags |= FZ_STEXT_PRESERVE_WHITESPACE;
	if (FUNC0(ctx, string, "preserve-images", &val) && FUNC1(val, "yes"))
		opts->flags |= FZ_STEXT_PRESERVE_IMAGES;
	if (FUNC0(ctx, string, "inhibit-spaces", &val) && FUNC1(val, "yes"))
		opts->flags |= FZ_STEXT_INHIBIT_SPACES;

	return opts;
}