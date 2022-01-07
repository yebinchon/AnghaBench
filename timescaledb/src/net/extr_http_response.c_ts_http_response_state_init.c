
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_code; int state; } ;
typedef TYPE_1__ HttpResponseState ;


 int HTTP_STATE_STATUS ;

void
ts_http_response_state_init(HttpResponseState *state)
{
 state->status_code = -1;
 state->state = HTTP_STATE_STATUS;
}
