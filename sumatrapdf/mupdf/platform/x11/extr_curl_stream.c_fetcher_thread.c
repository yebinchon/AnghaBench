
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int more_data_arg; int (* more_data ) (int ,int) ;scalar_t__ kill_thread; int complete; } ;
typedef TYPE_1__ curlstate ;


 int fetch_chunk (TYPE_1__*) ;
 int lock (TYPE_1__*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int unlock (TYPE_1__*) ;

__attribute__((used)) static void
fetcher_thread(curlstate *state)
{



 while (1) {
  int complete;
  lock(state);
  complete = state->complete || state->kill_thread;
  unlock(state);
  if (complete)
   break;
  fetch_chunk(state);
  if (state->more_data)
   state->more_data(state->more_data_arg, 0);
 }
 if (state->more_data)
  state->more_data(state->more_data_arg, 1);
}
