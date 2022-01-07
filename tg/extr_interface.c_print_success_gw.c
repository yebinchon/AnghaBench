
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;
struct in_ev {int refcnt; } ;


 struct tgl_state* TLS ;
 int assert (int) ;
 int free (struct in_ev*) ;
 int print_fail (struct in_ev*) ;
 int print_success (struct in_ev*) ;

void print_success_gw (struct tgl_state *TLSR, void *extra, int success) {
  assert (TLS == TLSR);
  struct in_ev *ev = extra;
  if (ev && !--ev->refcnt) {
    free (ev);
    return;
  }
  if (!success) { print_fail (ev); return; }
  else { print_success (ev); return; }
}
