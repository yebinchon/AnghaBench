
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int do_resize ;
 int shell_resized () ;

__attribute__((used)) static void
handle_resize()
{
    do_resize = FALSE;
    shell_resized();
}
