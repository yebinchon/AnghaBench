
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct position {int dummy; } ;
struct view_state {struct view_state* data; struct position position; struct view_state* prev; } ;
struct view_history {scalar_t__ state_alloc; int position; struct view_state* stack; } ;


 struct view_state* calloc (int,scalar_t__) ;
 int clear_position (int *) ;
 int memcmp (struct view_state*,void*,scalar_t__) ;
 int memcpy (struct view_state*,void*,scalar_t__) ;

struct view_state *
push_view_history_state(struct view_history *history, struct position *position, void *data)
{
 struct view_state *state = history->stack;

 if (state && data && history->state_alloc &&
     !memcmp(state->data, data, history->state_alloc))
  return ((void*)0);

 state = calloc(1, sizeof(*state) + history->state_alloc);
 if (!state)
  return ((void*)0);

 state->prev = history->stack;
 history->stack = state;
 clear_position(&history->position);
 state->position = *position;
 state->data = &state[1];
 if (data && history->state_alloc)
  memcpy(state->data, data, history->state_alloc);
 return state;
}
