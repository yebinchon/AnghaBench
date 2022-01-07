
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* body; size_t body_len; int context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ HttpRequest ;


 int MemoryContextSwitchTo (int ) ;
 int memcpy (char*,char const*,size_t) ;
 char* palloc (size_t) ;

void
ts_http_request_set_body(HttpRequest *req, const char *body, size_t body_len)
{
 MemoryContext old = MemoryContextSwitchTo(req->context);

 req->body = palloc(body_len + 1);
 memcpy(req->body, body, body_len);
 req->body[body_len] = '\0';
 req->body_len = body_len;
 MemoryContextSwitchTo(old);
}
