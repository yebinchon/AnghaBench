
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct reduce_data {int init; void* acc; int func; } ;
typedef void* strm_value ;
struct TYPE_4__ {struct reduce_data* data; } ;
typedef TYPE_1__ strm_stream ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 scalar_t__ strm_funcall (TYPE_1__*,int ,int,void**,void**) ;

__attribute__((used)) static int
iter_reduce(strm_stream* strm, strm_value data)
{
  struct reduce_data* d = strm->data;
  strm_value args[2];


  if (!d->init) {
    d->init = 1;
    d->acc = data;
    return STRM_OK;
  }

  args[0] = d->acc;
  args[1] = data;
  if (strm_funcall(strm, d->func, 2, args, &data) == STRM_NG) {
    return STRM_NG;
  }
  d->acc = data;
  return STRM_OK;
}
