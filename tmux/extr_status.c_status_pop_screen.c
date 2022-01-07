
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_line {scalar_t__ references; int screen; int * active; } ;
struct client {struct status_line status; } ;


 int free (int *) ;
 int screen_free (int *) ;

__attribute__((used)) static void
status_pop_screen(struct client *c)
{
 struct status_line *sl = &c->status;

 if (--sl->references == 0) {
  screen_free(sl->active);
  free(sl->active);
  sl->active = &sl->screen;
 }
}
