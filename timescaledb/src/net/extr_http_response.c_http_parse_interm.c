
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int content_length; void* state; int cur_header_value_len; int cur_header_name_len; int cur_header_value; int * cur_header_name; } ;
typedef TYPE_1__ HttpResponseState ;


 int HTTP_CONTENT_LENGTH ;
 void* HTTP_STATE_ERROR ;
 void* HTTP_STATE_HEADER_NAME ;

 int http_response_state_add_header (TYPE_1__*,int *,int ,int ,int ) ;
 int sscanf (int ,char*,int*) ;
 int strncmp (int ,int *,int ) ;

__attribute__((used)) static void
http_parse_interm(HttpResponseState *state, const char next)
{
 int temp_length;

 switch (next)
 {
  case 128:
   state->state = HTTP_STATE_HEADER_NAME;

   http_response_state_add_header(state,
             state->cur_header_name,
             state->cur_header_name_len,
             state->cur_header_value,
             state->cur_header_value_len);


   if (state->cur_header_name != ((void*)0) &&
    strncmp(HTTP_CONTENT_LENGTH, state->cur_header_name, state->cur_header_name_len) ==
     0)
   {
    if (sscanf(state->cur_header_value, "%d", &temp_length) == 1)
    {
     state->content_length = temp_length;
    }
    else
    {
     state->state = HTTP_STATE_ERROR;
     break;
    }
   }
   state->cur_header_name_len = 0;
   state->cur_header_value_len = 0;
   break;
  default:
   state->state = HTTP_STATE_ERROR;
   break;
 }
}
