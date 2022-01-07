
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct client {int flags; TYPE_1__ tty; int * prompt_saved; int * prompt_buffer; int * prompt_string; int * prompt_data; int (* prompt_freecb ) (int *) ;} ;


 int CLIENT_ALLREDRAWFLAGS ;
 int TTY_FREEZE ;
 int TTY_NOCURSOR ;
 int free (int *) ;
 int status_pop_screen (struct client*) ;
 int stub1 (int *) ;

void
status_prompt_clear(struct client *c)
{
 if (c->prompt_string == ((void*)0))
  return;

 if (c->prompt_freecb != ((void*)0) && c->prompt_data != ((void*)0))
  c->prompt_freecb(c->prompt_data);

 free(c->prompt_string);
 c->prompt_string = ((void*)0);

 free(c->prompt_buffer);
 c->prompt_buffer = ((void*)0);

 free(c->prompt_saved);
 c->prompt_saved = ((void*)0);

 c->tty.flags &= ~(TTY_NOCURSOR|TTY_FREEZE);
 c->flags |= CLIENT_ALLREDRAWFLAGS;

 status_pop_screen(c);
}
