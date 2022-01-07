
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method; } ;
typedef int StringInfo ;
typedef TYPE_1__ HttpRequest ;


 char* METHOD_STRING (int ) ;
 int appendStringInfoString (int ,char const*) ;

__attribute__((used)) static void
http_request_serialize_method(HttpRequest *req, StringInfo buf)
{
 const char *method = METHOD_STRING(req->method);

 appendStringInfoString(buf, method);
}
