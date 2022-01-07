
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int get_default_prompt () ;
 int print_end () ;
 int print_start () ;
 scalar_t__ read_one_string ;
 scalar_t__ readline_active ;
 scalar_t__ readline_disabled ;
 int rl_redisplay () ;
 int set_prompt (int ) ;
 int stdout ;

void update_prompt (void) {
  if (readline_disabled) {
    fflush (stdout);
    return;
  }
  if (read_one_string) { return; }
  print_start ();
  set_prompt (get_default_prompt ());
  if (readline_active) {
    rl_redisplay ();
  }
  print_end ();
}
