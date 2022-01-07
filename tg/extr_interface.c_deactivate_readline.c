
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (scalar_t__*) ;
 int fflush (int ) ;
 scalar_t__* malloc (int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int printf (char*) ;
 scalar_t__ read_one_string ;
 int rl_end ;
 int rl_line_buffer ;
 int rl_point ;
 int rl_redisplay () ;
 int rl_replace_line (char*,int ) ;
 int rl_save_prompt () ;
 scalar_t__* saved_line ;
 int saved_point ;
 int stdout ;

void deactivate_readline (void) {
  if (read_one_string) {
    printf ("\033[2K\r");
    fflush (stdout);
  } else {
    saved_point = rl_point;
    saved_line = malloc (rl_end + 1);
    assert (saved_line);
    saved_line[rl_end] = 0;
    memcpy (saved_line, rl_line_buffer, rl_end);

    rl_save_prompt();
    rl_replace_line("", 0);
    rl_redisplay();
  }
}
