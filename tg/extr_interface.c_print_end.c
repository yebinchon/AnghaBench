
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (scalar_t__) ;
 int fflush (int ) ;
 scalar_t__ in_readline ;
 scalar_t__ prompt_was ;
 int reactivate_readline () ;
 scalar_t__ readline_active ;
 scalar_t__ readline_disabled ;
 int stdout ;

void print_end (void) {
  if (in_readline) { return; }
  if (readline_disabled) {
    fflush (stdout);
    return;
  }
  assert (prompt_was);
  if (readline_active) {
    reactivate_readline ();
  }
  prompt_was = 0;
}
