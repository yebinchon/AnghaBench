
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DC_SERIALIZED_MAGIC ;
 int O_CREAT ;
 int O_RDWR ;
 int TGL_MK_USER (int) ;
 int TLS ;
 int assert (int) ;
 scalar_t__ binlog_enabled ;
 int bl_do_set_our_id (int ,int ) ;
 int bl_do_set_working_dc (int ,int) ;
 int close (int) ;
 int empty_auth_file () ;
 int get_auth_key_filename () ;
 int open (int ,int,int) ;
 int read (int,...) ;
 int read_dc (int,int,unsigned int) ;

void read_auth_file (void) {
  if (binlog_enabled) { return; }
  int auth_file_fd = open (get_auth_key_filename (), O_CREAT | O_RDWR, 0600);
  if (auth_file_fd < 0) {
    empty_auth_file ();
    return;
  }
  assert (auth_file_fd >= 0);
  unsigned x;
  unsigned m;
  if (read (auth_file_fd, &m, 4) < 4 || (m != DC_SERIALIZED_MAGIC)) {
    close (auth_file_fd);
    empty_auth_file ();
    return;
  }
  assert (read (auth_file_fd, &x, 4) == 4);
  assert (x > 0);
  int dc_working_num;
  assert (read (auth_file_fd, &dc_working_num, 4) == 4);

  int i;
  for (i = 0; i <= (int)x; i++) {
    int y;
    assert (read (auth_file_fd, &y, 4) == 4);
    if (y) {
      read_dc (auth_file_fd, i, m);
    }
  }
  bl_do_set_working_dc (TLS, dc_working_num);
  int our_id;
  int l = read (auth_file_fd, &our_id, 4);
  if (l < 4) {
    assert (!l);
  }
  if (our_id) {
    bl_do_set_our_id (TLS, TGL_MK_USER (our_id));
  }
  close (auth_file_fd);
}
