
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_kvs {int serial; int lock; int kv; int type; int ns; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int STRM_PTR_AUX ;
 int kh_init (int ) ;
 int kvs ;
 struct strm_kvs* malloc (int) ;
 int ns_kvs ;
 int pthread_mutex_init (int *,int *) ;
 int strm_ptr_value (struct strm_kvs*) ;

__attribute__((used)) static int
kvs_new(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_kvs *k = malloc(sizeof(struct strm_kvs));

  if (!k) return STRM_NG;
  k->ns = ns_kvs;
  k->type = STRM_PTR_AUX;
  k->kv = kh_init(kvs);
  k->serial = 1;
  pthread_mutex_init(&k->lock, ((void*)0));
  *ret = strm_ptr_value(k);
  return STRM_OK;
}
