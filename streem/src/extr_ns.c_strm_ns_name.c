
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_state ;
typedef scalar_t__ khiter_t ;


 scalar_t__ kh_begin (int ) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_exist (int ,scalar_t__) ;
 int kh_key (int ,scalar_t__) ;
 int * kh_value (int ,scalar_t__) ;
 int nstbl ;
 int strm_str_null ;

strm_string
strm_ns_name(strm_state* state)
{
  khiter_t k;

  if (!nstbl) return strm_str_null;
  for (k = kh_begin(nstbl); k != kh_end(nstbl); ++k) {
    if (kh_exist(nstbl, k)) {
      if (kh_value(nstbl, k) == state)
        return kh_key(nstbl, k);
    }
  }
  return strm_str_null;
}
