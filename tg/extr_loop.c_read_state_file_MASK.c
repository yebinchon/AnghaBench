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
 scalar_t__ STATE_FILE_MAGIC ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int,int*,int) ; 

void FUNC9 (void) {
  if (binlog_enabled) { return; }
  int state_file_fd = FUNC7 (FUNC6 (), O_CREAT | O_RDWR, 0600);
  if (state_file_fd < 0) {
    return;
  }
  int version, magic;
  if (FUNC8 (state_file_fd, &magic, 4) < 4) { FUNC5 (state_file_fd); return; }
  if (magic != (int)STATE_FILE_MAGIC) { FUNC5 (state_file_fd); return; }
  if (FUNC8 (state_file_fd, &version, 4) < 4) { FUNC5 (state_file_fd); return; }
  FUNC0 (version >= 0);
  int x[4];
  if (FUNC8 (state_file_fd, x, 16) < 16) {
    FUNC5 (state_file_fd); 
    return;
  }
  int pts = x[0];
  int qts = x[1];
  int seq = x[2];
  int date = x[3];
  FUNC5 (state_file_fd); 
  FUNC4 (TLS, seq);
  FUNC2 (TLS, pts);
  FUNC3 (TLS, qts);
  FUNC1 (TLS, date);
}