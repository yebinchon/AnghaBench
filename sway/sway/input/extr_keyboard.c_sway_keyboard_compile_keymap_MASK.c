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
struct xkb_rule_names {int /*<<< orphan*/  member_0; } ;
struct xkb_keymap {int dummy; } ;
struct xkb_context {int dummy; } ;
struct input_config {char* xkb_file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  XKB_CONTEXT_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_KEYMAP_COMPILE_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_KEYMAP_FORMAT_TEXT_V1 ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  handle_xkb_context_log ; 
 int /*<<< orphan*/  FUNC2 (struct input_config*,struct xkb_rule_names*) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (char*,size_t,char*,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xkb_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 struct xkb_context* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xkb_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xkb_context*,char**) ; 
 int /*<<< orphan*/  FUNC11 (struct xkb_context*) ; 
 struct xkb_keymap* FUNC12 (struct xkb_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xkb_keymap* FUNC13 (struct xkb_context*,struct xkb_rule_names*,int /*<<< orphan*/ ) ; 

struct xkb_keymap *FUNC14(struct input_config *ic,
		char **error) {
	struct xkb_context *context = FUNC8(XKB_CONTEXT_NO_FLAGS);
	if (!FUNC6(context, "cannot create XKB context")) {
		return NULL;
	}
	FUNC10(context, error);
	FUNC9(context, handle_xkb_context_log);

	struct xkb_keymap *keymap = NULL;

	if (ic && ic->xkb_file) {
		FILE *keymap_file = FUNC1(ic->xkb_file, "r");
		if (!keymap_file) {
			if (error) {
				size_t len = FUNC4(NULL, 0, "cannot read XKB file %s: %s",
						ic->xkb_file, FUNC5(errno)) + 1;
				*error = FUNC3(len);
				if (*error) {
					FUNC4(*error, len, "cannot read XKB file %s: %s",
							ic->xkb_file, FUNC5(errno));
				} else {
					FUNC7(SWAY_ERROR, "cannot read XKB file %s: %s",
							ic->xkb_file, FUNC5(errno));
				}
			} else {
				FUNC7(SWAY_ERROR, "cannot read XKB file %s: %s",
						ic->xkb_file, FUNC5(errno));
			}
			goto cleanup;
		}

		keymap = FUNC12(context, keymap_file,
					XKB_KEYMAP_FORMAT_TEXT_V1, XKB_KEYMAP_COMPILE_NO_FLAGS);

		if (!FUNC0(keymap_file)) {
			FUNC7(SWAY_ERROR, "cannot close XKB file %s: %s",
					ic->xkb_file, FUNC5(errno));
		}
	} else {
		struct xkb_rule_names rules = {0};
		if (ic) {
			FUNC2(ic, &rules);
		}
		keymap = FUNC13(context, &rules,
			XKB_KEYMAP_COMPILE_NO_FLAGS);
	}

cleanup:
	FUNC10(context, NULL);
	FUNC11(context);
	return keymap;
}