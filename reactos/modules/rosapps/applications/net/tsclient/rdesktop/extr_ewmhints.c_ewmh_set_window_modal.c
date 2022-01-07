
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Window ;
struct TYPE_5__ {int state_modal_atom; } ;
struct TYPE_6__ {TYPE_1__ ewmhints; } ;
typedef TYPE_2__ RDPCLIENT ;


 scalar_t__ ewmh_modify_state (TYPE_2__*,int ,int,int ,int ) ;

int
ewmh_set_window_modal(RDPCLIENT * This, Window wnd)
{
 if (ewmh_modify_state(This, wnd, 1, This->ewmhints.state_modal_atom, 0) < 0)
  return -1;
 return 0;
}
