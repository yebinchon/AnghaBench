
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ tcgetattr (int ,int *) ;
 int term_in ;
 int term_out ;
 int term_set_in ;
 int term_set_out ;

void get_terminal_attributes (void) {
  if (tcgetattr (STDIN_FILENO, &term_in) < 0) {
  } else {
    term_set_in = 1;
  }
  if (tcgetattr (STDOUT_FILENO, &term_out) < 0) {
  } else {
    term_set_out = 1;
  }
}
