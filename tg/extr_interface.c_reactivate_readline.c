
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int free (int ) ;
 int get_default_prompt () ;
 int one_string ;
 int one_string_flags ;
 char* one_string_len ;
 char* one_string_prompt ;
 int printf (char*,char*,...) ;
 scalar_t__ read_one_string ;
 int rl_point ;
 int rl_redisplay () ;
 int rl_replace_line (int ,int ) ;
 int saved_line ;
 int saved_point ;
 int set_prompt (int ) ;
 int stdout ;

void reactivate_readline (void) {
  if (read_one_string) {
    printf ("%s ", one_string_prompt);
    if (!(one_string_flags & 1)) {
      printf ("%.*s", one_string_len, one_string);
    }
    fflush (stdout);
  } else {
    set_prompt (get_default_prompt ());
    rl_replace_line(saved_line, 0);
    rl_point = saved_point;
    rl_redisplay();
    free (saved_line);
  }
}
