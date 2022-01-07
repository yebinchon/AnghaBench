
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_6__ {scalar_t__ serial; int tv; TYPE_2__* kvs; } ;
typedef TYPE_1__ strm_txn ;
typedef int strm_string ;
typedef int strm_stream ;
struct TYPE_7__ {int lock; int kv; } ;
typedef TYPE_2__ strm_kvs ;
typedef scalar_t__ khiter_t ;


 int STRM_OK ;
 TYPE_1__* get_txn (int,int *) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (int ,int ,int ) ;
 int kh_value (int ,scalar_t__) ;
 int kvs ;
 scalar_t__ kvs_serial (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strm_nil_value () ;
 int strm_str_intern_str (int ) ;
 int strm_to_str (int ) ;
 int txn ;
 int txn_retry (TYPE_1__*) ;
 int void_txn (int *) ;

__attribute__((used)) static int
txn_get(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_txn* t = get_txn(argc, args);
  strm_kvs* k;
  strm_string key = strm_str_intern_str(strm_to_str(args[1]));
  khiter_t i;

  if (!t) return void_txn(strm);
  k = t->kvs;
  if (t->serial != kvs_serial(k)) {
    return txn_retry(t);
  }
  i = kh_get(txn, t->tv, key);
  if (i == kh_end(t->tv)) {
    pthread_mutex_lock(&k->lock);
    i = kh_get(kvs, k->kv, key);
    if (i == kh_end(k->kv)) {
      *ret = strm_nil_value();
    }
    else {
      *ret = kh_value(k->kv, i);
    }
    pthread_mutex_unlock(&k->lock);
  }
  else {
    *ret = kh_value(t->tv, i);
  }
  return STRM_OK;
}
