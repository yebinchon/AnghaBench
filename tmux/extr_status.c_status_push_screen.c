
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct status_line {int references; int * active; int screen; } ;
struct TYPE_2__ {int sx; } ;
struct client {TYPE_1__ tty; struct status_line status; } ;


 int screen_init (int *,int ,int ,int ) ;
 int status_line_size (struct client*) ;
 int * xmalloc (int) ;

__attribute__((used)) static void
status_push_screen(struct client *c)
{
 struct status_line *sl = &c->status;

 if (sl->active == &sl->screen) {
  sl->active = xmalloc(sizeof *sl->active);
  screen_init(sl->active, c->tty.sx, status_line_size(c), 0);
 }
 sl->references++;
}
