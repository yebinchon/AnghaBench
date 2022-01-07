
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crtc_count; int conn; struct TYPE_4__* crtc_num; struct TYPE_4__* crtcs; struct TYPE_4__* saved_ramps; } ;
typedef TYPE_1__ randr_state_t ;


 int free (TYPE_1__*) ;
 int xcb_disconnect (int ) ;

__attribute__((used)) static void
randr_free(randr_state_t *state)
{

 for (int i = 0; i < state->crtc_count; i++) {
  free(state->crtcs[i].saved_ramps);
 }
 free(state->crtcs);
 free(state->crtc_num);


 xcb_disconnect(state->conn);

 free(state);
}
