
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value_len; int value; int name_len; int name; } ;
typedef int StringInfo ;
typedef TYPE_1__ HttpHeader ;


 int COLON ;
 int SPACE ;
 int appendOptionalBinaryStringInfo (int ,int ,int ) ;
 int http_request_serialize_char (int ,int ) ;

__attribute__((used)) static void
http_header_serialize(HttpHeader *header, StringInfo buf)
{
 appendOptionalBinaryStringInfo(buf, header->name, header->name_len);
 http_request_serialize_char(COLON, buf);
 http_request_serialize_char(SPACE, buf);
 appendOptionalBinaryStringInfo(buf, header->value, header->value_len);
}
