
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_code; } ;
typedef TYPE_1__ HttpResponseState ;



bool
ts_http_response_state_valid_status(HttpResponseState *state)
{

 if (state->status_code == -1)
  return 1;

 if (state->status_code / 100 == 2)
  return 1;
 return 0;
}
