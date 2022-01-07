
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct take_data {scalar_t__ n; } ;
typedef int strm_value ;
struct TYPE_5__ {struct take_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 int strm_stream_close (TYPE_1__*) ;

__attribute__((used)) static int
iter_take(strm_stream* strm, strm_value data)
{
  struct take_data* d = strm->data;

  strm_emit(strm, data, ((void*)0));
  d->n--;
  if (d->n == 0) {
    strm_stream_close(strm);
  }
  return STRM_OK;
}
