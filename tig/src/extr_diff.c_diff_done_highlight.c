
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_state {int view_io; int highlight; } ;


 int io_done (int *) ;
 int io_kill (int *) ;

bool
diff_done_highlight(struct diff_state *state)
{
 if (!state->highlight)
  return 1;
 io_kill(&state->view_io);
 return io_done(&state->view_io);
}
