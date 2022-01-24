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
 int /*<<< orphan*/  O_RDWR ; 
 int SECRET_CHAT_FILE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_enabled ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6 (void) {
  if (binlog_enabled) { return; }
  int secret_chat_fd = FUNC3 (FUNC2 (), O_RDWR, 0600);
  if (secret_chat_fd < 0) { return; }
  //assert (secret_chat_fd >= 0);
  int x;
  if (FUNC4 (secret_chat_fd, &x, 4) < 4) { FUNC1 (secret_chat_fd); return; }
  if (x != SECRET_CHAT_FILE_MAGIC) { FUNC1 (secret_chat_fd); return; }
  int v = 0;
  FUNC0 (FUNC4 (secret_chat_fd, &v, 4) == 4);
  FUNC0 (v == 0 || v == 1 || v == 2); // version  
  FUNC0 (FUNC4 (secret_chat_fd, &x, 4) == 4);
  FUNC0 (x >= 0);
  while (x --> 0) {
    FUNC5 (secret_chat_fd, v);
  }
  FUNC1 (secret_chat_fd);
}