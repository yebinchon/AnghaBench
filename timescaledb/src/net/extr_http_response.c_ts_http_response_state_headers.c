
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * headers; } ;
typedef TYPE_1__ HttpResponseState ;
typedef int HttpHeader ;



HttpHeader *
ts_http_response_state_headers(HttpResponseState *state)
{
 return state->headers;
}
