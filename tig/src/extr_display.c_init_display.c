
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * file; } ;
typedef int FILE ;


 int LINE_STATUS ;
 int STDIN_FILENO ;
 int TABSIZE ;
 scalar_t__ atexit (int ) ;
 int cursed ;
 int die (char*) ;
 int done_display ;
 int enable_mouse (int ) ;
 int * fopen (char*,char*) ;
 int get_line_attr (int *,int ) ;
 char* getenv (char*) ;
 int getmaxyx (int ,int,int) ;
 int init_colors () ;
 int initscr () ;
 scalar_t__ isatty (int ) ;
 int keypad (int ,int) ;
 int newterm (int *,int *,int *) ;
 int newwin (int,int,int,int ) ;
 int opt_mouse ;
 int opt_tab_size ;
 TYPE_1__ opt_tty ;
 int set_tabsize (int ) ;
 int set_terminal_modes () ;
 int status_win ;
 int stdscr ;
 int strcmp (char const*,char*) ;
 int use_scroll_redrawwin ;
 int use_scroll_status_wclear ;
 int wbkgdset (int ,int ) ;

void
init_display(void)
{
 bool no_display = !!getenv("TIG_NO_DISPLAY");
 const char *term;
 int x, y;

 if (!opt_tty.file)
  die("Can't initialize display without tty");

 if (atexit(done_display))
  die("Failed to register done_display");


 if (!no_display && isatty(STDIN_FILENO)) {

  cursed = !!initscr();
 } else {

  FILE *out_tty;

  out_tty = no_display ? fopen("/dev/null", "w+") : opt_tty.file;
  if (!out_tty)
   die("Failed to open tty for output");
  cursed = !!newterm(((void*)0), out_tty, opt_tty.file);
 }

 if (!cursed)
  die("Failed to initialize curses");

 set_terminal_modes();
 init_colors();

 getmaxyx(stdscr, y, x);
 status_win = newwin(1, x, y - 1, 0);
 if (!status_win)
  die("Failed to create status window");


 keypad(status_win, 1);
 wbkgdset(status_win, get_line_attr(((void*)0), LINE_STATUS));
 enable_mouse(opt_mouse);




 TABSIZE = opt_tab_size;


 term = getenv("XTERM_VERSION")
     ? ((void*)0)
     : (getenv("TERM_PROGRAM") ? getenv("TERM_PROGRAM") : getenv("COLORTERM"));
 if (term && !strcmp(term, "gnome-terminal")) {





  use_scroll_status_wclear = 1;
  use_scroll_redrawwin = 0;

 } else if (term &&
      (!strcmp(term, "xrvt-xpm") || !strcmp(term, "Apple_Terminal") ||
    !strcmp(term, "iTerm.app"))) {





  use_scroll_status_wclear = use_scroll_redrawwin = 0;

 } else {



  use_scroll_redrawwin = 1;
  use_scroll_status_wclear = 0;
 }
}
