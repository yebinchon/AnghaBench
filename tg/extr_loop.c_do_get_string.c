
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;


 int deactivate_readline () ;
 int fflush (int ) ;
 int generate_prompt (int ,int ) ;
 scalar_t__ one_string_len ;
 int one_string_num ;
 char* one_string_prompt ;
 int one_string_type ;
 int printf (char*,char*) ;
 int read_one_string ;
 int stdout ;

void do_get_string (struct tgl_state *TLS) {
  deactivate_readline ();
  generate_prompt (one_string_type, one_string_num);
  printf ("%s", one_string_prompt);
  fflush (stdout);
  read_one_string = 1;
  one_string_len = 0;
}
