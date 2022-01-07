
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct take_data {scalar_t__ n; } ;
typedef int strm_value ;
struct TYPE_4__ {struct take_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
iter_drop(strm_stream* strm, strm_value data)
{
  struct take_data* d = strm->data;

  if (d->n > 0) {
    d->n--;
    return STRM_OK;
  }
  strm_emit(strm, data, ((void*)0));
  return STRM_OK;
}
