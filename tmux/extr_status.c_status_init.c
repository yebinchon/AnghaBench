
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct status_line {int screen; int * active; TYPE_2__* entries; } ;
struct TYPE_3__ {int sx; } ;
struct client {TYPE_1__ tty; struct status_line status; } ;
struct TYPE_4__ {int ranges; } ;


 int TAILQ_INIT (int *) ;
 size_t nitems (TYPE_2__*) ;
 int screen_init (int *,int ,int,int ) ;

void
status_init(struct client *c)
{
 struct status_line *sl = &c->status;
 u_int i;

 for (i = 0; i < nitems(sl->entries); i++)
  TAILQ_INIT(&sl->entries[i].ranges);

 screen_init(&sl->screen, c->tty.sx, 1, 0);
 sl->active = &sl->screen;
}
