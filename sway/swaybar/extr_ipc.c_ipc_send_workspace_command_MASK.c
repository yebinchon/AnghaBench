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
typedef  int uint32_t ;
struct swaybar {int /*<<< orphan*/  ipc_socketfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char const*) ; 

void FUNC5(struct swaybar *bar, const char *ws) {
	uint32_t size = FUNC4("workspace \"\"") + FUNC4(ws);
	for (size_t i = 0; i < FUNC4(ws); ++i) {
		if (ws[i] == '"' || ws[i] == '\\') {
			++size;
		}
	}

	char *command = FUNC2(size + 1);
	if (!command) {
		return;
	}

	FUNC3(command, "workspace \"");
	FUNC3(&command[size - 1], "\"");
	for (size_t i = 0, d = FUNC4("workspace \""); i < FUNC4(ws); ++i) {
		if (ws[i] == '"' || ws[i] == '\\') {
			command[d++] = '\\';
		}
		command[d++] = ws[i];
	}

	FUNC1(bar->ipc_socketfd, IPC_COMMAND, command, &size);
	FUNC0(command);
}