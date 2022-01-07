
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_draw_state ;
struct TYPE_4__ {int top; int stack_cap; int * stack; } ;
typedef TYPE_1__ fz_draw_device ;
typedef int fz_context ;


 int STACK_PUSHED (char const*) ;
 int grow_stack (int *,TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static fz_draw_state *push_stack(fz_context *ctx, fz_draw_device *dev, const char *message)
{
 fz_draw_state *state;
 if (dev->top == dev->stack_cap-1)
  grow_stack(ctx, dev);
 state = &dev->stack[dev->top];
 dev->top++;
 memcpy(&state[1], state, sizeof(*state));
 STACK_PUSHED(message);
 return state;
}
