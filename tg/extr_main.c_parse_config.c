
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTH_KEY_FILE ;
 int BINLOG_FILE ;
 int CONFIG_DIRECTORY ;
 int CONFIG_DIRECTORY_MODE ;
 int DOWNLOADS_DIRECTORY ;
 int SECRET_CHAT_FILE ;
 int STATE_FILE ;
 int TLS ;
 char* auth_file_name ;
 scalar_t__ binlog_enabled ;
 char* binlog_file_name ;
 int disable_output ;
 char* downloads_directory ;
 int get_home_directory () ;
 int mkdir (char*,int ) ;
 int printf (char*,...) ;
 char* secret_chat_file_name ;
 char* state_file_name ;
 int tasprintf (char**,char*,int ,int ,int ) ;
 int tgl_set_binlog_mode (int ,int) ;
 int tgl_set_binlog_path (int ,char*) ;
 int tgl_set_download_directory (int ,char*) ;

void parse_config (void) {
  if (!disable_output) {
    printf ("libconfig not enabled\n");
  }
  tasprintf (&downloads_directory, "%s/%s/%s", get_home_directory (), CONFIG_DIRECTORY, DOWNLOADS_DIRECTORY);

  if (binlog_enabled) {
    tasprintf (&binlog_file_name, "%s/%s/%s", get_home_directory (), CONFIG_DIRECTORY, BINLOG_FILE);
    tgl_set_binlog_mode (TLS, 1);
    tgl_set_binlog_path (TLS, binlog_file_name);
  } else {
    tgl_set_binlog_mode (TLS, 0);

    tasprintf (&auth_file_name, "%s/%s/%s", get_home_directory (), CONFIG_DIRECTORY, AUTH_KEY_FILE);
    tasprintf (&state_file_name, "%s/%s/%s", get_home_directory (), CONFIG_DIRECTORY, STATE_FILE);
    tasprintf (&secret_chat_file_name, "%s/%s/%s", get_home_directory (), CONFIG_DIRECTORY, SECRET_CHAT_FILE);
  }
  tgl_set_download_directory (TLS, downloads_directory);
  if (!mkdir (downloads_directory, CONFIG_DIRECTORY_MODE)) {
    if (!disable_output) {
      printf ("[%s] created\n", downloads_directory);
    }
  }
}
