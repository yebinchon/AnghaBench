
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_code; } ;
typedef TYPE_1__ HttpResponseState ;



int
ts_http_response_state_status_code(HttpResponseState *state)
{
 return state->status_code;
}
