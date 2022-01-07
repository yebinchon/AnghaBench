
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef scalar_t__ strm_int ;


 scalar_t__ STRM_STR_INTERN_LIMIT ;
 scalar_t__ readonly_data_p (char const*) ;
 int str_intern (char const*,scalar_t__,int ) ;
 int str_new (char const*,scalar_t__,int ) ;
 int strm_event_loop_started ;

strm_string
strm_str_new(const char* p, strm_int len)
{
  if (!strm_event_loop_started) {

    if (p && (len < STRM_STR_INTERN_LIMIT || readonly_data_p(p))) {
      return str_intern(p, len, 0);
    }
  }
  return str_new(p, len, 0);
}
