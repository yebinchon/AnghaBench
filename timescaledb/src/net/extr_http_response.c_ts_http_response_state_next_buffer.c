
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ offset; char* raw_buffer; } ;
typedef TYPE_1__ HttpResponseState ;


 int Assert (int) ;
 scalar_t__ MAX_RAW_BUFFER_SIZE ;
 int ts_http_response_state_buffer_remaining (TYPE_1__*) ;

char *
ts_http_response_state_next_buffer(HttpResponseState *state, ssize_t *bufsize)
{
 Assert(state->offset <= MAX_RAW_BUFFER_SIZE);

 if (((void*)0) != bufsize)
  *bufsize = ts_http_response_state_buffer_remaining(state);





 if (state->offset > MAX_RAW_BUFFER_SIZE)
  return ((void*)0);

 return state->raw_buffer + state->offset;
}
