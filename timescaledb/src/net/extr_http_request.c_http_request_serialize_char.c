
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfoChar (int ,char) ;

__attribute__((used)) static void
http_request_serialize_char(char to_serialize, StringInfo buf)
{
 appendStringInfoChar(buf, to_serialize);
}
