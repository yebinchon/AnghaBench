
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crtc_num; int fd; int * crtcs; int * res; scalar_t__ card_num; } ;
typedef TYPE_1__ drm_state_t ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static int
drm_init(drm_state_t **state)
{

 *state = malloc(sizeof(drm_state_t));
 if (*state == ((void*)0)) return -1;

 drm_state_t *s = *state;
 s->card_num = 0;
 s->crtc_num = -1;
 s->fd = -1;
 s->res = ((void*)0);
 s->crtcs = ((void*)0);

 return 0;
}
