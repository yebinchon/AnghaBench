
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_value ;
typedef int strm_stream ;
struct TYPE_3__ {int kv; } ;
typedef TYPE_1__ strm_kvs ;


 int STRM_NG ;
 int STRM_OK ;
 TYPE_1__* get_kvs (int,int *) ;
 int kh_destroy (int ,int ) ;
 int kvs ;
 int strm_raise (int *,char*) ;

__attribute__((used)) static int
kvs_close(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_kvs* k = get_kvs(argc, args);
  if (!k) {
    strm_raise(strm, "no kvs given");
    return STRM_NG;
  }
  kh_destroy(kvs, k->kv);
  return STRM_OK;
}
