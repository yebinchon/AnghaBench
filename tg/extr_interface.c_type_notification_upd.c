
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_user {int id; } ;
struct tgl_state {int dummy; } ;
struct in_ev {int dummy; } ;
typedef enum tgl_typing_status { ____Placeholder_tgl_typing_status } tgl_typing_status ;


 int COLOR_YELLOW ;
 struct tgl_state* TLS ;
 int assert (int) ;
 scalar_t__ disable_output ;
 scalar_t__ enable_json ;
 int log_level ;
 int mpop_color (struct in_ev*) ;
 int mprint_end (struct in_ev*) ;
 int mprint_start (struct in_ev*) ;
 int mprintf (struct in_ev*,char*) ;
 int mpush_color (struct in_ev*,int ) ;
 struct in_ev* notify_ev ;
 int print_typing (struct in_ev*,int) ;
 int print_user_name (struct in_ev*,int ,void*) ;

void type_notification_upd (struct tgl_state *TLSR, struct tgl_user *U, enum tgl_typing_status status) {
  assert (TLSR == TLS);
  if (log_level < 2 || (disable_output && !notify_ev)) { return; }
  if (enable_json) { return; }
  struct in_ev *ev = notify_ev;
  mprint_start (ev);
  mpush_color (ev, COLOR_YELLOW);
  mprintf (ev, "User ");
  print_user_name (ev, U->id, (void *)U);
  mprintf (ev, " is ");
  print_typing (ev, status);
  mprintf (ev, "\n");
  mpop_color (ev);
  mprint_end (ev);
}
