
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {struct TYPE_20__* next; } ;
struct TYPE_19__ {int body_len; TYPE_3__* headers; } ;
struct TYPE_18__ {size_t len; char const* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ HttpRequest ;
typedef TYPE_3__ HttpHeader ;


 int CARRIAGE ;
 int NEW_LINE ;
 int SPACE ;
 int http_header_get_content_length (TYPE_3__*) ;
 int http_header_serialize (TYPE_3__*,TYPE_1__*) ;
 int http_request_serialize_body (TYPE_2__*,TYPE_1__*) ;
 int http_request_serialize_char (int ,TYPE_1__*) ;
 int http_request_serialize_method (TYPE_2__*,TYPE_1__*) ;
 int http_request_serialize_uri (TYPE_2__*,TYPE_1__*) ;
 int http_request_serialize_version (TYPE_2__*,TYPE_1__*) ;
 int initStringInfo (TYPE_1__*) ;

const char *
ts_http_request_build(HttpRequest *req, size_t *buf_size)
{

 StringInfoData buf;
 HttpHeader *cur_header;
 int content_length = 0;
 bool verified_content_length = 0;

 initStringInfo(&buf);

 http_request_serialize_method(req, &buf);
 http_request_serialize_char(SPACE, &buf);

 http_request_serialize_uri(req, &buf);
 http_request_serialize_char(SPACE, &buf);

 http_request_serialize_version(req, &buf);
 http_request_serialize_char(CARRIAGE, &buf);
 http_request_serialize_char(NEW_LINE, &buf);

 cur_header = req->headers;

 while (cur_header != ((void*)0))
 {
  content_length = http_header_get_content_length(cur_header);
  if (content_length != -1)
  {

   if (content_length != req->body_len)
   {
    return ((void*)0);
   }
   else
    verified_content_length = 1;
  }
  http_header_serialize(cur_header, &buf);
  http_request_serialize_char(CARRIAGE, &buf);
  http_request_serialize_char(NEW_LINE, &buf);

  cur_header = cur_header->next;
 }
 http_request_serialize_char(CARRIAGE, &buf);
 http_request_serialize_char(NEW_LINE, &buf);

 if (!verified_content_length)
 {

  if (req->body_len != 0)
  {
   return ((void*)0);
  }
 }

 http_request_serialize_body(req, &buf);

 if (buf_size != ((void*)0))
  *buf_size = buf.len;
 return buf.data;
}
