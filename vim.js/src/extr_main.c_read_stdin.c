
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SEA_DIALOG ;
 int TIME_MSG (char*) ;
 int TRUE ;
 int check_swap_exists_action () ;
 int close (int ) ;
 int dup (int) ;
 int ignored ;
 int msg_didany ;
 int no_wait_return ;
 int open_buffer (int ,int *,int ) ;
 int set_buflisted (int ) ;
 int swap_exists_action ;

__attribute__((used)) static void
read_stdin()
{
    int i;





    no_wait_return = TRUE;
    i = msg_didany;
    set_buflisted(TRUE);
    (void)open_buffer(TRUE, ((void*)0), 0);
    no_wait_return = FALSE;
    msg_didany = i;
    TIME_MSG("reading stdin");
    close(0);
    ignored = dup(2);

}
