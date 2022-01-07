
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* state; int cur_header_name_len; scalar_t__ parse_offset; scalar_t__ raw_buffer; int cur_header_value; } ;
typedef TYPE_1__ HttpResponseState ;



 void* HTTP_STATE_ALMOST_DONE ;
 void* HTTP_STATE_ERROR ;
 void* HTTP_STATE_HEADER_VALUE ;


__attribute__((used)) static void
http_parse_header_name(HttpResponseState *state, const char next)
{
 switch (next)
 {
  case 128:
   state->state = HTTP_STATE_HEADER_VALUE;
   state->cur_header_value = state->raw_buffer + state->parse_offset + 1;
   break;
  case 129:
   if (state->cur_header_name_len == 0)
   {
    state->state = HTTP_STATE_ALMOST_DONE;
    break;
   }
   else
   {





    state->state = HTTP_STATE_ERROR;
    break;
   }
  default:

   if (('a' <= next && next <= 'z') || ('A' <= next && next <= 'Z') || next == '-')
   {

    state->cur_header_name_len++;
    break;
   }
   state->state = HTTP_STATE_ERROR;
   break;
 }
}
