
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Window ;
struct TYPE_5__ {int state_maximized_horz_atom; int state_maximized_vert_atom; } ;
struct TYPE_6__ {TYPE_1__ ewmhints; } ;
typedef TYPE_2__ RDPCLIENT ;


 int SEAMLESSRDP_MAXIMIZED ;
 scalar_t__ ewmh_modify_state (TYPE_2__*,int ,int,int ,int ) ;

int
ewmh_change_state(RDPCLIENT * This, Window wnd, int state)
{



 if (state == SEAMLESSRDP_MAXIMIZED)
 {
  if (ewmh_modify_state
      (This, wnd, 1, This->ewmhints.state_maximized_vert_atom,
       This->ewmhints.state_maximized_horz_atom) < 0)
   return -1;
 }
 else
 {
  if (ewmh_modify_state
      (This, wnd, 0, This->ewmhints.state_maximized_vert_atom,
       This->ewmhints.state_maximized_horz_atom) < 0)
   return -1;
 }

 return 0;
}
