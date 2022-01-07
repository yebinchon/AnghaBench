
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int name_len; int name; } ;
typedef TYPE_1__ HttpHeader ;


 int HTTP_CONTENT_LENGTH ;
 int sscanf (int ,char*,int*) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int
http_header_get_content_length(HttpHeader *header)
{
 int content_length = -1;

 if (!strncmp(header->name, HTTP_CONTENT_LENGTH, header->name_len))
  sscanf(header->value, "%d", &content_length);
 return content_length;
}
