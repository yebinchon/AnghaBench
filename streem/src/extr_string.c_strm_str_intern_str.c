
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int str_intern (int ,int ,int ) ;
 int strm_event_loop_started ;
 scalar_t__ strm_str_intern_p (int ) ;
 int strm_str_len (int ) ;
 int strm_str_ptr (int ) ;
 int sym_mutex ;

strm_string
strm_str_intern_str(strm_string str)
{
  if (strm_str_intern_p(str)) {
    return str;
  }
  if (!strm_event_loop_started) {
    return str_intern(strm_str_ptr(str), strm_str_len(str), 0);
  }
  pthread_mutex_lock(&sym_mutex);
  str = str_intern(strm_str_ptr(str), strm_str_len(str), 0);
  pthread_mutex_unlock(&sym_mutex);

  return str;
}
