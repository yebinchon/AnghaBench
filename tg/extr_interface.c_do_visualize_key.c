
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int dummy; } ;
struct command {int dummy; } ;
struct arg {int peer_id; } ;
typedef int buf ;






 char* COLOR_INVERSE ;
 int TLS ;
 int assert (int) ;
 int disable_colors ;
 int memset (unsigned char*,int ,int) ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*) ;
 int mpush_color (struct in_ev*,char*) ;
 int tgl_do_visualize_key (int ,int ,unsigned char*) ;

void do_visualize_key (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  static char *colors[4] = {128, 130, 131, 129};
  static unsigned char buf[16];
  memset (buf, 0, sizeof (buf));
  tgl_do_visualize_key (TLS, args[0].peer_id, buf);
  mprint_start (ev);
  int i;
  for (i = 0; i < 16; i++) {
    int x = buf[i];
    int j;
    for (j = 0; j < 4; j ++) {
      if (!ev) {
        mpush_color (ev, colors[x & 3]);
        mpush_color (ev, COLOR_INVERSE);
      }
      if (!disable_colors && !ev) {
        mprintf (ev, "  ");
      } else {
        switch (x & 3) {
        case 0:
          mprintf (ev, "  ");
          break;
        case 1:
          mprintf (ev, "--");
          break;
        case 2:
          mprintf (ev, "==");
          break;
        case 3:
          mprintf (ev, "||");
          break;
        }
      }
      if (!ev) {
        mpop_color (ev);
        mpop_color (ev);
      }
      x = x >> 2;
    }
    if (i & 1) {
      mprintf (ev, "\n");
    }
  }
  mprint_end (ev);
}
