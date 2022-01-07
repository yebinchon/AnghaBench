
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int kvs_close ;
 int kvs_get ;
 int kvs_new ;
 int kvs_put ;
 int kvs_str ;
 int kvs_txn ;
 int kvs_update ;
 int * ns_kvs ;
 int * ns_txn ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_new (int *,char*) ;
 int strm_var_def (int *,char*,int ) ;
 int txn_get ;
 int txn_put ;
 int txn_str ;
 int txn_update ;

void
strm_kvs_init(strm_state* state)
{
  ns_kvs = strm_ns_new(((void*)0), "kvs");
  strm_var_def(ns_kvs, "get", strm_cfunc_value(kvs_get));
  strm_var_def(ns_kvs, "put", strm_cfunc_value(kvs_put));
  strm_var_def(ns_kvs, "update", strm_cfunc_value(kvs_update));
  strm_var_def(ns_kvs, "txn", strm_cfunc_value(kvs_txn));
  strm_var_def(ns_kvs, "close", strm_cfunc_value(kvs_close));
  strm_var_def(ns_kvs, "string", strm_cfunc_value(kvs_str));

  ns_txn = strm_ns_new(((void*)0), "kvs_txn");
  strm_var_def(ns_txn, "get", strm_cfunc_value(txn_get));
  strm_var_def(ns_txn, "put", strm_cfunc_value(txn_put));
  strm_var_def(ns_txn, "update", strm_cfunc_value(txn_update));
  strm_var_def(ns_kvs, "string", strm_cfunc_value(txn_str));

  strm_var_def(state, "kvs", strm_cfunc_value(kvs_new));
}
