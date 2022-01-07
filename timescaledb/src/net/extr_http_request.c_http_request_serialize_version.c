
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef int StringInfo ;
typedef TYPE_1__ HttpRequest ;


 char* VERSION_STRING (int ) ;
 int appendStringInfoString (int ,char const*) ;

__attribute__((used)) static void
http_request_serialize_version(HttpRequest *req, StringInfo buf)
{
 const char *version = VERSION_STRING(req->version);

 appendStringInfoString(buf, version);
}
