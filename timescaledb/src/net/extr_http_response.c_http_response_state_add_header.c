
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * headers; int context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ HttpResponseState ;
typedef int HttpHeader ;


 int MemoryContextSwitchTo (int ) ;
 int * ts_http_header_create (char const*,size_t,char const*,size_t,int *) ;

__attribute__((used)) static void
http_response_state_add_header(HttpResponseState *state, const char *name, size_t name_len,
          const char *value, size_t value_len)
{
 MemoryContext old = MemoryContextSwitchTo(state->context);
 HttpHeader *new_header =
  ts_http_header_create(name, name_len, value, value_len, state->headers);

 state->headers = new_header;
 MemoryContextSwitchTo(old);
}
