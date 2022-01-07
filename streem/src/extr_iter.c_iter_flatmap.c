
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct map_data {int func; } ;
typedef int strm_value ;
struct TYPE_6__ {struct map_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef size_t strm_int ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 int strm_array_p (int ) ;
 size_t strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 scalar_t__ strm_funcall (TYPE_1__*,int ,int,int *,int *) ;
 int strm_raise (TYPE_1__*,char*) ;

__attribute__((used)) static int
iter_flatmap(strm_stream* strm, strm_value data)
{
  struct map_data* d = strm->data;
  strm_value val;
  strm_int i, len;
  strm_value* e;

  if (strm_funcall(strm, d->func, 1, &data, &val) == STRM_NG) {
    return STRM_NG;
  }
  if (!strm_array_p(val)) {
    strm_raise(strm, "no array given for flatmap");
    return STRM_NG;
  }
  len = strm_ary_len(val);
  e = strm_ary_ptr(val);
  for (i=0; i<len; i++){
    strm_emit(strm, e[i], ((void*)0));
  }
  return STRM_OK;
}
