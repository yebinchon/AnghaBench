
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int screen_num; int * display; int * saved_ramps; } ;
typedef TYPE_1__ vidmode_state_t ;


 int * XOpenDisplay (int *) ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__* malloc (int) ;
 int stderr ;

__attribute__((used)) static int
vidmode_init(vidmode_state_t **state)
{
 *state = malloc(sizeof(vidmode_state_t));
 if (*state == ((void*)0)) return -1;

 vidmode_state_t *s = *state;
 s->screen_num = -1;
 s->saved_ramps = ((void*)0);


 s->display = XOpenDisplay(((void*)0));
 if (s->display == ((void*)0)) {
  fprintf(stderr, _("X request failed: %s\n"), "XOpenDisplay");
  return -1;
 }

 return 0;
}
