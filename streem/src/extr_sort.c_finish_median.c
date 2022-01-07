
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sort_data {struct sort_data* buf; int len; } ;
typedef int strm_value ;
struct TYPE_4__ {struct sort_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int free (struct sort_data*) ;
 int quick_median (struct sort_data*,int ) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
finish_median(strm_stream* strm, strm_value data)
{
  struct sort_data* d = strm->data;
  strm_value v;

  v = quick_median(d->buf, d->len);
  free(d->buf);
  strm_emit(strm, v, ((void*)0));
  free(d);
  return STRM_OK;
}
