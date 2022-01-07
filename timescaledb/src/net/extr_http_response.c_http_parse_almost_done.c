
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int content_length; scalar_t__ parse_offset; scalar_t__ raw_buffer; int body_start; } ;
typedef TYPE_1__ HttpResponseState ;


 int HTTP_STATE_BODY ;
 int HTTP_STATE_DONE ;
 int HTTP_STATE_ERROR ;


__attribute__((used)) static void
http_parse_almost_done(HttpResponseState *state, const char next)
{

 switch (next)
 {
  case 128:
   state->state = HTTP_STATE_BODY;
   state->body_start = state->raw_buffer + state->parse_offset + 1;

   if (state->content_length == 0)
    state->state = HTTP_STATE_DONE;
   break;
  default:
   state->state = HTTP_STATE_ERROR;
   break;
 }
}
