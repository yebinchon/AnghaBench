
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ev {int refcnt; } ;
struct command {int dummy; } ;
struct arg {char* str; } ;


 int TLS ;
 int assert (int) ;
 int print_user_gw ;
 int strlen (char*) ;
 int tgl_do_import_card (int ,int,int*,int ,struct in_ev*) ;

void do_import_card (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  assert (arg_num == 1);
  char *s = args[0].str;
  int l = strlen (s);
  if (l > 0) {
    int i;
    static int p[10];
    int pp = 0;
    int cur = 0;
    int ok = 1;
    for (i = 0; i < l; i ++) {
      if (s[i] >= '0' && s[i] <= '9') {
        cur = cur * 16 + s[i] - '0';
      } else if (s[i] >= 'a' && s[i] <= 'f') {
        cur = cur * 16 + s[i] - 'a' + 10;
      } else if (s[i] == ':') {
        if (pp >= 9) {
          ok = 0;
          break;
        }
        p[pp ++] = cur;
        cur = 0;
      }
    }
    if (ok) {
      p[pp ++] = cur;
      if (ev) { ev->refcnt ++; }
      tgl_do_import_card (TLS, pp, p, print_user_gw, ev);
    }
  }
}
