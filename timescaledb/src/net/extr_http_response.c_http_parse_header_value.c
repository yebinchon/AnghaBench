
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur_header_value_len; int state; } ;
typedef TYPE_1__ HttpResponseState ;



 int HTTP_STATE_ERROR ;
 int HTTP_STATE_INTERM ;


__attribute__((used)) static void
http_parse_header_value(HttpResponseState *state, const char next)
{

 switch (next)
 {
  case 129:
   state->state = HTTP_STATE_INTERM;
   break;
  case 128:

   state->state = HTTP_STATE_ERROR;
   break;
  default:
   state->cur_header_value_len++;
   break;
 }
}
