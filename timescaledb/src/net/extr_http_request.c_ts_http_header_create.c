
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; size_t name_len; char* value; size_t value_len; struct TYPE_5__* next; } ;
typedef TYPE_1__ HttpHeader ;


 int memcpy (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 void* palloc (size_t) ;

HttpHeader *
ts_http_header_create(const char *name, size_t name_len, const char *value, size_t value_len,
       HttpHeader *next)
{
 HttpHeader *new_header = palloc(sizeof(HttpHeader));

 memset(new_header, 0, sizeof(*new_header));
 new_header->name = palloc(name_len + 1);
 if (name_len > 0)
  memcpy(new_header->name, name, name_len);
 new_header->name[name_len] = '\0';
 new_header->name_len = name_len;

 new_header->value = palloc(value_len + 1);
 if (value_len > 0)
  memcpy(new_header->value, value, value_len);
 new_header->value[value_len] = '\0';
 new_header->value_len = value_len;

 new_header->next = next;
 return new_header;
}
