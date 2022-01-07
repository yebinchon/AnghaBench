
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct slice_data {scalar_t__ n; scalar_t__ i; void** buf; } ;
typedef void* strm_value ;
struct TYPE_4__ {struct slice_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ strm_int ;
typedef int strm_array ;


 int STRM_OK ;
 int strm_ary_new (void**,scalar_t__) ;
 int strm_ary_value (int ) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
iter_consec(strm_stream* strm, strm_value data)
{
  struct slice_data* d = strm->data;
  strm_int n = d->n;

  if (d->i < n) {
    d->buf[d->i++] = data;
    if (d->i == n) {
      strm_array ary = strm_ary_new(d->buf, n);
      strm_emit(strm, strm_ary_value(ary), ((void*)0));
    }
    return STRM_OK;
  }
  else {
    strm_array ary;
    strm_int i;
    strm_int len = n-1;

    for (i=0; i<len; i++) {
      d->buf[i] = d->buf[i+1];
    }
    d->buf[len] = data;
    ary = strm_ary_new(d->buf, n);
    strm_emit(strm, strm_ary_value(ary), ((void*)0));
  }
  return STRM_OK;
}
