
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int SECRET_CHAT_FILE_MAGIC ;
 int SEEK_SET ;
 int TLS ;
 int assert (int) ;
 scalar_t__ binlog_enabled ;
 int close (int) ;
 int get_secret_chat_filename () ;
 int lseek (int,int,int ) ;
 int open (int ,int,int) ;
 int tgl_peer_iterator_ex (int ,int ,int*) ;
 int write (int,int*,int) ;
 int write_secret_chat ;

void write_secret_chat_file (void) {
  if (binlog_enabled) { return; }
  int secret_chat_fd = open (get_secret_chat_filename (), O_CREAT | O_RDWR, 0600);
  assert (secret_chat_fd >= 0);
  int x = SECRET_CHAT_FILE_MAGIC;
  assert (write (secret_chat_fd, &x, 4) == 4);
  x = 2;
  assert (write (secret_chat_fd, &x, 4) == 4);
  assert (write (secret_chat_fd, &x, 4) == 4);

  int y[2];
  y[0] = secret_chat_fd;
  y[1] = 0;

  tgl_peer_iterator_ex (TLS, write_secret_chat, y);

  lseek (secret_chat_fd, 8, SEEK_SET);
  assert (write (secret_chat_fd, &y[1], 4) == 4);
  close (secret_chat_fd);
}
