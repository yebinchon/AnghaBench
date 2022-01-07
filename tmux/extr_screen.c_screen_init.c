
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen {int * sel; int * tabs; void* ccolour; scalar_t__ cstyle; int * titles; void* title; int grid; } ;


 int grid_create (int ,int ,int ) ;
 int screen_reinit (struct screen*) ;
 void* xstrdup (char*) ;

void
screen_init(struct screen *s, u_int sx, u_int sy, u_int hlimit)
{
 s->grid = grid_create(sx, sy, hlimit);
 s->title = xstrdup("");
 s->titles = ((void*)0);

 s->cstyle = 0;
 s->ccolour = xstrdup("");
 s->tabs = ((void*)0);
 s->sel = ((void*)0);

 screen_reinit(s);
}
