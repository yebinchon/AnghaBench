
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HISTORY ;
 int STRING_LENGTH_WRAPPED ;
 int clrtoeol () ;
 int count_lines (char*) ;
 scalar_t__* flag ;
 char* input_line ;
 int * lines ;
 int move (int,int ) ;
 int printw (char*,...) ;
 int refresh () ;
 int wrap (char*,int ,int ) ;
 int wrap_bars (char*,int ,int ) ;
 int x ;
 int y ;

void do_refresh()
{
    int count = 0;
    char wrap_output[STRING_LENGTH_WRAPPED];
    int i;

    for (i = 0; i < HISTORY; i++) {
        if (flag[i])
            wrap_bars(wrap_output, lines[i], x);
        else
            wrap(wrap_output, lines[i], x);

        int L = count_lines(wrap_output);
        count = count + L;

        if (count < y) {
            move(y - 1 - count, 0);
            printw("%s", wrap_output);
            clrtoeol();
        }
    }

    move(y - 1, 0);
    clrtoeol();
    printw(">> ");
    printw("%s", input_line);
    clrtoeol();
    refresh();
}
