
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_draw_state ;
struct TYPE_3__ {size_t top; int * stack; } ;
typedef TYPE_1__ fz_draw_device ;
typedef int fz_context ;


 int STACK_POPPED (char const*) ;

__attribute__((used)) static fz_draw_state *pop_stack(fz_context *ctx, fz_draw_device *dev, const char *message)
{
 fz_draw_state *state = &dev->stack[--dev->top];
 STACK_POPPED(message);
 return state;
}
