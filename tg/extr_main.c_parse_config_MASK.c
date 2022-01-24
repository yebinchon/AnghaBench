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
 int /*<<< orphan*/  AUTH_KEY_FILE ; 
 int /*<<< orphan*/  BINLOG_FILE ; 
 int /*<<< orphan*/  CONFIG_DIRECTORY ; 
 int /*<<< orphan*/  CONFIG_DIRECTORY_MODE ; 
 int /*<<< orphan*/  DOWNLOADS_DIRECTORY ; 
 int /*<<< orphan*/  SECRET_CHAT_FILE ; 
 int /*<<< orphan*/  STATE_FILE ; 
 int /*<<< orphan*/  TLS ; 
 char* auth_file_name ; 
 scalar_t__ binlog_enabled ; 
 char* binlog_file_name ; 
 int /*<<< orphan*/  disable_output ; 
 char* downloads_directory ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* secret_chat_file_name ; 
 char* state_file_name ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7 (void) {
  if (!disable_output) {
    FUNC2 ("libconfig not enabled\n");
  }
  FUNC3 (&downloads_directory, "%s/%s/%s", FUNC0 (), CONFIG_DIRECTORY, DOWNLOADS_DIRECTORY);

  if (binlog_enabled) {
    FUNC3 (&binlog_file_name, "%s/%s/%s", FUNC0 (), CONFIG_DIRECTORY, BINLOG_FILE);
    FUNC4 (TLS, 1);
    FUNC5 (TLS, binlog_file_name);
  } else {
    FUNC4 (TLS, 0);
    //tgl_set_auth_file_path (auth_file_name;
    FUNC3 (&auth_file_name, "%s/%s/%s", FUNC0 (), CONFIG_DIRECTORY, AUTH_KEY_FILE);
    FUNC3 (&state_file_name, "%s/%s/%s", FUNC0 (), CONFIG_DIRECTORY, STATE_FILE);
    FUNC3 (&secret_chat_file_name, "%s/%s/%s", FUNC0 (), CONFIG_DIRECTORY, SECRET_CHAT_FILE);
  }
  FUNC6 (TLS, downloads_directory);
  if (!FUNC1 (downloads_directory, CONFIG_DIRECTORY_MODE)) {
    if (!disable_output) {
      FUNC2 ("[%s] created\n", downloads_directory);
    }
  }
}