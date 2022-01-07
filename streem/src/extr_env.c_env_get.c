
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;
typedef int strm_env ;
typedef scalar_t__ khiter_t ;


 int STRM_NG ;
 int STRM_OK ;
 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get (int *,int *,int ) ;
 int kh_value (int *,scalar_t__) ;
 int strm_str_intern_p (int ) ;
 int strm_str_intern_str (int ) ;

int
env_get(strm_env* env, strm_string name, strm_value* val)
{
  khiter_t k;

  if (!strm_str_intern_p(name)) {
    name = strm_str_intern_str(name);
  }
  k = kh_get(env, env, name);
  if (k == kh_end(env)) return STRM_NG;
  *val = kh_value(env, k);
  return STRM_OK;
}
