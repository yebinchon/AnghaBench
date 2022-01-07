
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct node_string {int dummy; } ;
typedef int strm_int ;
typedef TYPE_1__* node_string ;
struct TYPE_4__ {int len; char* buf; } ;


 TYPE_1__* malloc (int) ;
 int memcpy (char*,char const*,int) ;

node_string
node_str_new(const char* s, strm_int len)
{
  node_string str;

  str = malloc(sizeof(struct node_string)+len+1);
  str->len = len;
  memcpy(str->buf, s, len);
  str->buf[len] = '\0';
  return str;
}
