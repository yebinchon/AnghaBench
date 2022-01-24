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
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  chat_mode_id ; 
 scalar_t__ in_chat_mode ; 
 int /*<<< orphan*/  offline_mode ; 
 int /*<<< orphan*/  print_msg_list_gw ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7 (char *line) {
  if (line == NULL || /* EOF received */
          !FUNC2 (line, "/exit", 5) || !FUNC2 (line, "/quit", 5)) {
    in_chat_mode = 0;
    FUNC6 ();
    return;
  }
  if (!FUNC2 (line, "/history", 8)) {
    int limit = 40;
    FUNC0 (line, "/history %99d", &limit);
    if (limit < 0 || limit > 1000) { limit = 40; }
    FUNC3 (TLS, chat_mode_id, 0, limit, offline_mode, print_msg_list_gw, 0);
    return;
  }
  if (!FUNC2 (line, "/read", 5)) {
    FUNC4 (TLS, chat_mode_id, 0, 0);
    return;
  }
  if (FUNC1 (line) > 0) {
    FUNC5 (TLS, chat_mode_id, line, FUNC1 (line), 0, NULL, 0, 0);
  }
}