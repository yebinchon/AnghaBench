
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef size_t strm_int ;
typedef int strm_array ;
typedef int node_string ;


 int node_to_sym (int ) ;
 int strm_ary_new (int *,size_t) ;
 int * strm_ary_ptr (int ) ;

__attribute__((used)) static strm_array
ary_headers(node_string* headers, strm_int len)
{
  strm_array ary = strm_ary_new(((void*)0), len);
  strm_value* p = strm_ary_ptr(ary);
  strm_int i;

  for (i=0; i<len; i++) {
    p[i] = node_to_sym(headers[i]);
  }
  return ary;
}
