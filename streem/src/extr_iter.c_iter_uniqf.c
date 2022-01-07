
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct uniq_data {void* v; void* last; scalar_t__ init; int func; } ;
typedef void* strm_value ;
struct TYPE_5__ {struct uniq_data* data; } ;
typedef TYPE_1__ strm_stream ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 scalar_t__ TRUE ;
 int strm_emit (TYPE_1__*,void*,int *) ;
 scalar_t__ strm_funcall (TYPE_1__*,int ,int,void**,void**) ;
 int strm_value_eq (void*,void*) ;

__attribute__((used)) static int
iter_uniqf(strm_stream* strm, strm_value data)
{
  struct uniq_data* d = strm->data;
  strm_value val;

  if (strm_funcall(strm, d->func, 1, &data, &val) == STRM_NG) {
    return STRM_NG;
  }
  if (!d->init) {
    d->init = TRUE;
    d->last = data;
    d->v = val;
    strm_emit(strm, data, ((void*)0));
    return STRM_OK;
  }
  if (!strm_value_eq(val, d->v)) {
    d->last = data;
    d->v = val;
    strm_emit(strm, data, ((void*)0));
  }
  return STRM_OK;
}
