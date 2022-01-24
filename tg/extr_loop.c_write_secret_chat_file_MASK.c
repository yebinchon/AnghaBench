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
 int O_CREAT ; 
 int O_RDWR ; 
 int SECRET_CHAT_FILE_MAGIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_enabled ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int,int*,int) ; 
 int /*<<< orphan*/  write_secret_chat ; 

void FUNC7 (void) {
  if (binlog_enabled) { return; }
  int secret_chat_fd = FUNC4 (FUNC2 (), O_CREAT | O_RDWR, 0600);
  FUNC0 (secret_chat_fd >= 0);
  int x = SECRET_CHAT_FILE_MAGIC;
  FUNC0 (FUNC6 (secret_chat_fd, &x, 4) == 4);
  x = 2; 
  FUNC0 (FUNC6 (secret_chat_fd, &x, 4) == 4); // version
  FUNC0 (FUNC6 (secret_chat_fd, &x, 4) == 4); // num

  int y[2];
  y[0] = secret_chat_fd;
  y[1] = 0;

  FUNC5 (TLS, write_secret_chat, y);

  FUNC3 (secret_chat_fd, 8, SEEK_SET);
  FUNC0 (FUNC6 (secret_chat_fd, &y[1], 4) == 4);
  FUNC1 (secret_chat_fd);
}