
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int context; } ;
typedef int MemoryContext ;
typedef int HttpRequestMethod ;
typedef TYPE_1__ HttpRequest ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* palloc0 (int) ;
 int ts_http_request_init (TYPE_1__*,int ) ;

HttpRequest *
ts_http_request_create(HttpRequestMethod method)
{
 MemoryContext request_context =
  AllocSetContextCreate(CurrentMemoryContext, "Http Request", ALLOCSET_DEFAULT_SIZES);
 MemoryContext old = MemoryContextSwitchTo(request_context);
 HttpRequest *req = palloc0(sizeof(HttpRequest));

 req->context = request_context;
 ts_http_request_init(req, method);

 MemoryContextSwitchTo(old);
 return req;
}
