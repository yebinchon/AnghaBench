
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_txn {int serial; int * kvs; int tv; int type; int ns; } ;
typedef struct strm_txn strm_txn ;
typedef int strm_kvs ;


 int STRM_PTR_AUX ;
 int kh_init (int ) ;
 int kvs_serial (int *) ;
 struct strm_txn* malloc (int) ;
 int ns_txn ;
 int txn ;

__attribute__((used)) static strm_txn*
txn_new(strm_kvs* kvs)
{
  struct strm_txn *t = malloc(sizeof(struct strm_txn));

  if (!t) return ((void*)0);
  t->ns = ns_txn;
  t->type = STRM_PTR_AUX;
  t->tv = kh_init(txn);
  t->kvs = kvs;
  t->serial = kvs_serial(kvs);
  return t;
}
