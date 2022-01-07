
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* uri; int uri_len; int context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ HttpRequest ;


 int MemoryContextSwitchTo (int ) ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 int strlen (char const*) ;

void
ts_http_request_set_uri(HttpRequest *req, const char *uri)
{
 MemoryContext old = MemoryContextSwitchTo(req->context);
 int uri_len = strlen(uri);

 req->uri = palloc(uri_len + 1);
 memcpy(req->uri, uri, uri_len);
 req->uri[uri_len] = '\0';
 req->uri_len = uri_len;
 MemoryContextSwitchTo(old);
}
