
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FlushConsoleInputBuffer (int ) ;
 int GetStdHandle (int ) ;
 int STD_INPUT_HANDLE ;
 int Sleep (int) ;
 int gl_char_cleanup () ;
 scalar_t__ gl_init_done ;

__attribute__((used)) static void
gl_cleanup(void)

{
    if (gl_init_done > 0)
        gl_char_cleanup();
    gl_init_done = 0;




}
