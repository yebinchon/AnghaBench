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
 unsigned int DC_SERIALIZED_MAGIC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ binlog_enabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int,...) ; 
 int /*<<< orphan*/  FUNC9 (int,int,unsigned int) ; 

void FUNC10 (void) {
  if (binlog_enabled) { return; }
  int auth_file_fd = FUNC7 (FUNC6 (), O_CREAT | O_RDWR, 0600);
  if (auth_file_fd < 0) {
    FUNC5 ();
    return;
  }
  FUNC1 (auth_file_fd >= 0);
  unsigned x;
  unsigned m;
  if (FUNC8 (auth_file_fd, &m, 4) < 4 || (m != DC_SERIALIZED_MAGIC)) {
    FUNC4 (auth_file_fd);
    FUNC5 ();
    return;
  }
  FUNC1 (FUNC8 (auth_file_fd, &x, 4) == 4);
  FUNC1 (x > 0);
  int dc_working_num;
  FUNC1 (FUNC8 (auth_file_fd, &dc_working_num, 4) == 4);
  
  int i;
  for (i = 0; i <= (int)x; i++) {
    int y;
    FUNC1 (FUNC8 (auth_file_fd, &y, 4) == 4);
    if (y) {
      FUNC9 (auth_file_fd, i, m);
    }
  }
  FUNC3 (TLS, dc_working_num);
  int our_id;
  int l = FUNC8 (auth_file_fd, &our_id, 4);
  if (l < 4) {
    FUNC1 (!l);
  }
  if (our_id) {
    FUNC2 (TLS, FUNC0 (our_id));
  }
  FUNC4 (auth_file_fd);
}