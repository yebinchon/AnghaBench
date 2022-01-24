#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int peer_id; } ;
struct TYPE_5__ {int max_dc_num; int dc_working_num; TYPE_1__ our_id; } ;

/* Variables and functions */
 int DC_SERIALIZED_MAGIC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 TYPE_2__* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ binlog_enabled ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int,int*,int) ; 
 int /*<<< orphan*/  write_dc ; 

void FUNC6 (void) {
  if (binlog_enabled) { return; }
  int auth_file_fd = FUNC3 (FUNC2 (), O_CREAT | O_RDWR, 0600);
  FUNC0 (auth_file_fd >= 0);
  int x = DC_SERIALIZED_MAGIC;
  FUNC0 (FUNC5 (auth_file_fd, &x, 4) == 4);
  FUNC0 (FUNC5 (auth_file_fd, &TLS->max_dc_num, 4) == 4);
  FUNC0 (FUNC5 (auth_file_fd, &TLS->dc_working_num, 4) == 4);

  FUNC4 (TLS, write_dc, &auth_file_fd);

  FUNC0 (FUNC5 (auth_file_fd, &TLS->our_id.peer_id, 4) == 4);
  FUNC1 (auth_file_fd);
}