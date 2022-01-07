
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * headers; int context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ HttpRequest ;
typedef int HttpHeader ;


 int MemoryContextSwitchTo (int ) ;
 int strlen (char const*) ;
 int * ts_http_header_create (char const*,int,char const*,int,int *) ;

void
ts_http_request_set_header(HttpRequest *req, const char *name, const char *value)
{
 MemoryContext old = MemoryContextSwitchTo(req->context);
 int name_len = strlen(name);
 int value_len = strlen(value);
 HttpHeader *new_header = ts_http_header_create(name, name_len, value, value_len, req->headers);

 req->headers = new_header;
 MemoryContextSwitchTo(old);
}
