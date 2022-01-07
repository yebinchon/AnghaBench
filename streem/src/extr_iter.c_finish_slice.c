
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct slice_data {scalar_t__ i; struct slice_data* buf; } ;
typedef int strm_value ;
struct TYPE_4__ {struct slice_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef int strm_array ;


 int STRM_OK ;
 int free (struct slice_data*) ;
 int strm_ary_new (struct slice_data*,scalar_t__) ;
 int strm_ary_value (int ) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
finish_slice(strm_stream* strm, strm_value data)
{
  struct slice_data* d = strm->data;

  if (d->i > 0) {
    strm_array ary = strm_ary_new(d->buf, d->i);
    strm_emit(strm, strm_ary_value(ary), ((void*)0));
  }
  free(d->buf);
  free(d);
  return STRM_OK;
}
