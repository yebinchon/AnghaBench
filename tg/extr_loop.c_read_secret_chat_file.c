
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int SECRET_CHAT_FILE_MAGIC ;
 int assert (int) ;
 scalar_t__ binlog_enabled ;
 int close (int) ;
 int get_secret_chat_filename () ;
 int open (int ,int ,int) ;
 int read (int,int*,int) ;
 int read_secret_chat (int,int) ;

void read_secret_chat_file (void) {
  if (binlog_enabled) { return; }
  int secret_chat_fd = open (get_secret_chat_filename (), O_RDWR, 0600);
  if (secret_chat_fd < 0) { return; }

  int x;
  if (read (secret_chat_fd, &x, 4) < 4) { close (secret_chat_fd); return; }
  if (x != SECRET_CHAT_FILE_MAGIC) { close (secret_chat_fd); return; }
  int v = 0;
  assert (read (secret_chat_fd, &v, 4) == 4);
  assert (v == 0 || v == 1 || v == 2);
  assert (read (secret_chat_fd, &x, 4) == 4);
  assert (x >= 0);
  while (x --> 0) {
    read_secret_chat (secret_chat_fd, v);
  }
  close (secret_chat_fd);
}
