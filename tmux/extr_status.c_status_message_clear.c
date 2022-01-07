
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct client {int flags; TYPE_1__ tty; int * prompt_string; int * message_string; } ;


 int CLIENT_ALLREDRAWFLAGS ;
 int TTY_FREEZE ;
 int TTY_NOCURSOR ;
 int free (int *) ;
 int status_pop_screen (struct client*) ;

void
status_message_clear(struct client *c)
{
 if (c->message_string == ((void*)0))
  return;

 free(c->message_string);
 c->message_string = ((void*)0);

 if (c->prompt_string == ((void*)0))
  c->tty.flags &= ~(TTY_NOCURSOR|TTY_FREEZE);
 c->flags |= CLIENT_ALLREDRAWFLAGS;

 status_pop_screen(c);
}
