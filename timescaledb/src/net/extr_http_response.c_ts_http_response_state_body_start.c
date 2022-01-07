
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* body_start; } ;
typedef TYPE_1__ HttpResponseState ;



const char *
ts_http_response_state_body_start(HttpResponseState *state)
{
 return state->body_start;
}
