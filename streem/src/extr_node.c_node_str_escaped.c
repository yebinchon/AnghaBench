
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_int ;
typedef int node_string ;


 int node_str_new (char const*,int ) ;
 int string_escape (char*,int ) ;

node_string
node_str_escaped(const char* s, strm_int len)
{
  len = string_escape((char*)s, len);
  return node_str_new(s, len);
}
