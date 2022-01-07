
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ HttpResponseState ;


 scalar_t__ HTTP_STATE_DONE ;

bool
ts_http_response_state_is_done(HttpResponseState *state)
{
 return (state->state == HTTP_STATE_DONE);
}
