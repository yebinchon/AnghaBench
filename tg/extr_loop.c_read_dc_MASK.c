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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC4 (int,...) ; 

void FUNC5 (int auth_file_fd, int id, unsigned ver) {
  int port = 0;
  FUNC0 (FUNC4 (auth_file_fd, &port, 4) == 4);
  int l = 0;
  FUNC0 (FUNC4 (auth_file_fd, &l, 4) == 4);
  FUNC0 (l >= 0 && l < 100);
  char ip[100];
  FUNC0 (FUNC4 (auth_file_fd, ip, l) == l);
  ip[l] = 0;

  long long auth_key_id;
  static unsigned char auth_key[256];
  FUNC0 (FUNC4 (auth_file_fd, &auth_key_id, 8) == 8);
  FUNC0 (FUNC4 (auth_file_fd, auth_key, 256) == 256);

  //bl_do_add_dc (id, ip, l, port, auth_key_id, auth_key);
  FUNC1 (TLS, 0, id, "DC", 2, ip, l, port);
  FUNC3 (TLS, id, auth_key);
  FUNC2 (TLS, id);
}