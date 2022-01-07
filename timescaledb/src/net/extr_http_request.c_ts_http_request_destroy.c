
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; } ;
typedef TYPE_1__ HttpRequest ;


 int MemoryContextDelete (int ) ;

void
ts_http_request_destroy(HttpRequest *req)
{
 MemoryContextDelete(req->context);
}
