
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ offset; } ;
typedef TYPE_1__ HttpResponseState ;


 int Assert (int) ;
 scalar_t__ MAX_RAW_BUFFER_SIZE ;

ssize_t
ts_http_response_state_buffer_remaining(HttpResponseState *state)
{
 Assert(state->offset <= MAX_RAW_BUFFER_SIZE);

 return MAX_RAW_BUFFER_SIZE - state->offset;
}
