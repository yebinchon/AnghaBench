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
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
#define  IPC_COMMAND 132 
 int IPC_GET_CONFIG ; 
#define  IPC_GET_INPUTS 131 
#define  IPC_GET_OUTPUTS 130 
#define  IPC_GET_SEATS 129 
 int IPC_GET_VERSION ; 
#define  IPC_GET_WORKSPACES 128 
 int IPC_SEND_TICK ; 
 int JSON_C_TO_STRING_PRETTY ; 
 int JSON_C_TO_STRING_SPACED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(int type, json_object *resp) {
	if (type != IPC_COMMAND && type != IPC_GET_WORKSPACES &&
			type != IPC_GET_INPUTS && type != IPC_GET_OUTPUTS &&
			type != IPC_GET_VERSION && type != IPC_GET_SEATS &&
			type != IPC_GET_CONFIG && type != IPC_SEND_TICK) {
		FUNC10("%s\n", FUNC2(resp,
			JSON_C_TO_STRING_PRETTY | JSON_C_TO_STRING_SPACED));
		return;
	}

	if (type == IPC_SEND_TICK) {
		return;
	}

	if (type == IPC_GET_VERSION) {
		FUNC8(resp);
		return;
	}

	if (type == IPC_GET_CONFIG) {
		FUNC4(resp);
		return;
	}

	json_object *obj;
	size_t len = FUNC1(resp);
	for (size_t i = 0; i < len; ++i) {
		obj = FUNC0(resp, i);
		switch (type) {
		case IPC_COMMAND:
			FUNC3(obj);
			break;
		case IPC_GET_WORKSPACES:
			FUNC9(obj);
			break;
		case IPC_GET_INPUTS:
			FUNC5(obj);
			break;
		case IPC_GET_OUTPUTS:
			FUNC6(obj);
			break;
		case IPC_GET_SEATS:
			FUNC7(obj);
			break;
		}
	}
}