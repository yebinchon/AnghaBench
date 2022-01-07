
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;
struct TYPE_3__ {int lock; int kv; } ;
typedef TYPE_1__ strm_kvs ;
typedef scalar_t__ khiter_t ;


 int STRM_NG ;
 int STRM_OK ;
 TYPE_1__* get_kvs (int,int *) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (int ,int ,int ) ;
 int kh_value (int ,scalar_t__) ;
 int kvs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strm_nil_value () ;
 int strm_raise (int *,char*) ;
 int strm_str_intern_str (int ) ;
 int strm_to_str (int ) ;

__attribute__((used)) static int
kvs_get(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_kvs* k = get_kvs(argc, args);
  strm_string key = strm_str_intern_str(strm_to_str(args[1]));
  khiter_t i;

  if (!k) {
    strm_raise(strm, "no kvs given");
    return STRM_NG;
  }
  pthread_mutex_lock(&k->lock);
  i = kh_get(kvs, k->kv, key);
  if (i == kh_end(k->kv)) {
    *ret = strm_nil_value();
  }
  else {
    *ret = kh_value(k->kv, i);
  }
  pthread_mutex_unlock(&k->lock);
  return STRM_OK;
}
