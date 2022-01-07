
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_misc {int * ns; } ;
typedef int strm_value ;
typedef int strm_state ;


 scalar_t__ STRM_PTR_AUX ;
 scalar_t__ STRM_TAG_PTR ;
 scalar_t__ strm_array_p (int ) ;
 int * strm_ary_ns (int ) ;
 int * strm_ns_array ;
 int * strm_ns_number ;
 int * strm_ns_string ;
 scalar_t__ strm_number_p (int ) ;
 struct strm_misc* strm_ptr (int ) ;
 scalar_t__ strm_ptr_type (struct strm_misc*) ;
 scalar_t__ strm_string_p (int ) ;
 scalar_t__ strm_value_tag (int ) ;

strm_state*
strm_value_ns(strm_value val)
{
  if (strm_array_p(val)) {
    strm_state* ns = strm_ary_ns(val);
    if (ns) return ns;
    return strm_ns_array;
  }
  if (strm_string_p(val)) {
    return strm_ns_string;
  }
  if (strm_number_p(val)) {
    return strm_ns_number;
  }
  if (strm_value_tag(val) == STRM_TAG_PTR) {
    struct strm_misc* p = strm_ptr(val);

    if (!p) return ((void*)0);
    if (strm_ptr_type(p) == STRM_PTR_AUX) {
      return p->ns;
    }
  }
  return ((void*)0);
}
