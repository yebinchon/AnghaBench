
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_user_status {int online; int when; } ;
struct in_ev {int dummy; } ;


 int assert (int) ;
 int enable_json ;
 int mprintf (struct in_ev*,char*) ;
 int print_date_full (struct in_ev*,int ) ;

void print_user_status (struct tgl_user_status *S, struct in_ev *ev) {
  assert(!enable_json);
  if (S->online > 0) {
    mprintf (ev, "online (was online ");
    print_date_full (ev, S->when);
    mprintf (ev, ")");
  } else {
    if (S->online == 0) {
      mprintf (ev, "offline");
    } else if (S->online == -1) {
      mprintf (ev, "offline (was online ");
      print_date_full (ev, S->when);
      mprintf (ev, ")");
    } else if (S->online == -2) {
      mprintf (ev, "offline (was online recently)");
    } else if (S->online == -3) {
      mprintf (ev, "offline (was online last week)");
    } else if (S->online == -4) {
      mprintf (ev, "offline (was online last month)");
    }
  }
}
