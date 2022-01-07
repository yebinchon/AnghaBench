
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct map_data {int func; } ;
typedef int strm_value ;
struct TYPE_5__ {struct map_data* data; } ;
typedef TYPE_1__ strm_stream ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 scalar_t__ strm_funcall (TYPE_1__*,int ,int,int *,int *) ;

__attribute__((used)) static int
iter_map(strm_stream* strm, strm_value data)
{
  struct map_data* d = strm->data;
  strm_value val;

  if (strm_funcall(strm, d->func, 1, &data, &val) == STRM_NG) {
    return STRM_NG;
  }
  strm_emit(strm, val, ((void*)0));
  return STRM_OK;
}
