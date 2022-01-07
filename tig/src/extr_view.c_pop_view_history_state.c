
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct position {int dummy; } ;
struct view_state {struct position position; int data; struct view_state* prev; } ;
struct view_history {int state_alloc; struct view_state* stack; struct position position; } ;


 int free (struct view_state*) ;
 int memcpy (void*,int ,int ) ;
 scalar_t__ view_history_is_empty (struct view_history*) ;

bool
pop_view_history_state(struct view_history *history, struct position *position, void *data)
{
 struct view_state *state = history->stack;

 if (view_history_is_empty(history))
  return 0;

 history->position = state->position;
 history->stack = state->prev;

 if (data && history->state_alloc)
  memcpy(data, state->data, history->state_alloc);
 if (position)
  *position = state->position;

 free(state);
 return 1;
}
