
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_int ;
struct TYPE_3__ {int value; int type; } ;
typedef TYPE_1__ node_str ;
typedef int node ;


 int NODE_STR ;
 TYPE_1__* malloc (int) ;
 int node_str_new (char const*,int ) ;
 int string_escape (char*,int ) ;

node*
node_string_new(const char* s, strm_int len)
{
  node_str* ns = malloc(sizeof(node_str));

  ns->type = NODE_STR;
  len = string_escape((char*)s, len);
  ns->value = node_str_new(s, len);
  return (node*)ns;
}
