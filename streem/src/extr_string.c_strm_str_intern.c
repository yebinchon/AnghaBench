
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_int ;


 int assert (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int str_intern (char const*,int ,int ) ;
 int strm_event_loop_started ;
 int sym_mutex ;

strm_string
strm_str_intern(const char* p, strm_int len)
{
  strm_string str;

  assert(p!=((void*)0));
  if (!strm_event_loop_started) {
    return str_intern(p, len, 0);
  }
  pthread_mutex_lock(&sym_mutex);
  str = str_intern(p, len, 0);
  pthread_mutex_unlock(&sym_mutex);

  return str;
}
