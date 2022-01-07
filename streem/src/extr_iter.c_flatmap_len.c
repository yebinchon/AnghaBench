
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef size_t strm_int ;
typedef int strm_array ;


 scalar_t__ strm_array_p (int ) ;
 size_t strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;

__attribute__((used)) static int
flatmap_len(strm_array ary)
{
  strm_value* v = strm_ary_ptr(ary);
  strm_int i, len, n = 0;

  len = strm_ary_len(ary);
  for (i=0; i<len; i++) {
    if (strm_array_p(v[i])) {
      n += flatmap_len(v[i]);
    }
    else {
      n++;
    }
  }
  return n;
}
