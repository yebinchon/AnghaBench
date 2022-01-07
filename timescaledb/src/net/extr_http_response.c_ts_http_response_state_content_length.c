
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t content_length; } ;
typedef TYPE_1__ HttpResponseState ;



size_t
ts_http_response_state_content_length(HttpResponseState *state)
{
 return state->content_length;
}
