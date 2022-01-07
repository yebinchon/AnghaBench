
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uri_len; int uri; } ;
typedef int StringInfo ;
typedef TYPE_1__ HttpRequest ;


 int appendOptionalBinaryStringInfo (int ,int ,int ) ;

__attribute__((used)) static void
http_request_serialize_uri(HttpRequest *req, StringInfo buf)
{
 appendOptionalBinaryStringInfo(buf, req->uri, req->uri_len);
}
