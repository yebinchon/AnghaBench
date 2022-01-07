
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct slice_data {scalar_t__ n; scalar_t__ i; int * buf; } ;
typedef int strm_value ;
struct TYPE_4__ {struct slice_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ strm_int ;
typedef int strm_array ;


 int STRM_OK ;
 int strm_ary_new (int *,scalar_t__) ;
 int strm_ary_value (int ) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
iter_slice(strm_stream* strm, strm_value data)
{
  struct slice_data* d = strm->data;
  strm_int n = d->n;

  d->buf[d->i++] = data;
  if (d->i == n) {
    strm_array ary = strm_ary_new(d->buf, n);

    d->i = 0;
    strm_emit(strm, strm_ary_value(ary), ((void*)0));
  }
  return STRM_OK;
}
