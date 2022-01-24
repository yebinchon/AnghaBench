#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ command; scalar_t__ ctrl_id; int /*<<< orphan*/ ** txt; } ;
typedef  TYPE_1__ loc_cmd ;
struct TYPE_12__ {scalar_t__ id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 size_t IDD_DIALOG ; 
#define  LC_BASE 130 
#define  LC_GROUP 129 
#define  LC_TEXT 128 
 scalar_t__ MSG_000 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* control_id ; 
 scalar_t__ default_msg_table ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* loc_dlg ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ msg_table ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 

BOOL FUNC12(loc_cmd* lcmd)
{
	size_t i;
	static int dlg_index = 0;
	loc_cmd* base_locale = NULL;
	const char* msg_prefix = "MSG_";

	if (lcmd == NULL)
		return FALSE;

	if (lcmd->command <= LC_TEXT) {
		// Any command up to LC_TEXT takes a control ID in text[0]
		if (FUNC10(lcmd->txt[0], msg_prefix, 4) == 0) {
			// The unneeded NULL check is to silence a VS warning
			if ((lcmd->txt[0] == NULL) || (lcmd->command != LC_TEXT)) {
				FUNC7("only the [t]ext command can be applied to a message (MSG_###)\n");
				goto err;
			}
			// Try to convert the numeric part of a MSG_#### to a numeric
			lcmd->ctrl_id = MSG_000 + FUNC3(&(lcmd->txt[0][4]));
			if (lcmd->ctrl_id == MSG_000) {
				// Conversion could not be performed
				FUNC8("failed to convert the numeric value in '%'\n", lcmd->txt[0]);
				goto err;
			}
			FUNC2(lcmd);
			FUNC4(lcmd);
			return TRUE;
		}
		for (i=0; i<FUNC0(control_id); i++) {
			if (FUNC9(lcmd->txt[0], control_id[i].name) == 0) {
				lcmd->ctrl_id = control_id[i].id;
				break;
			}
		}
		if (lcmd->ctrl_id < 0) {
			FUNC8("unknown control '%s'\n", lcmd->txt[0]);
			goto err;
		}
	}

	// Don't process UI commands when we're dealing with the default
	if (msg_table == default_msg_table) {
		FUNC4(lcmd);
		return TRUE;
	}

	switch(lcmd->command) {
	// NB: For commands that take an ID, ctrl_id is always a valid index at this stage
	case LC_TEXT:
		FUNC1(dlg_index, lcmd);
		break;
	case LC_GROUP:
		if ((lcmd->ctrl_id-IDD_DIALOG) > FUNC0(loc_dlg)) {
			FUNC8("'%s' is not a group ID\n", lcmd->txt[0]);
			goto err;
		}
		dlg_index = lcmd->ctrl_id - IDD_DIALOG;
		FUNC4(lcmd);
		break;
	case LC_BASE:
		base_locale = FUNC6(lcmd->txt[0], FALSE);
		if (base_locale != NULL) {
			FUNC11("localization: using locale base '%s'\n", lcmd->txt[0]);
			FUNC5(NULL, base_locale);
		} else {
			FUNC8("locale base '%s' not found - ignoring", lcmd->txt[0]);
		}
		FUNC4(lcmd);
		break;
	default:
		FUNC4(lcmd);
		break;
	}
	return TRUE;

err:
	FUNC4(lcmd);
	return FALSE;
}