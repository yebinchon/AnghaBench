
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sort_data {size_t len; struct sort_data* buf; int func; } ;
struct sort_arg {int func; TYPE_1__* strm; } ;
typedef int strm_value ;
struct TYPE_4__ {struct sort_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef size_t strm_int ;


 int STRM_OK ;
 int free (struct sort_data*) ;
 int mem_sort (struct sort_data*,size_t,struct sort_arg*) ;
 int strm_emit (TYPE_1__*,struct sort_data,int *) ;
 scalar_t__ strm_nil_p (int ) ;

__attribute__((used)) static int
finish_sort(strm_stream* strm, strm_value data)
{
  struct sort_data* d = strm->data;
  strm_int i, len;

  if (strm_nil_p(d->func)) {
    mem_sort(d->buf, d->len, ((void*)0));
  }
  else {
    struct sort_arg arg;

    arg.strm = strm;
    arg.func = d->func;
    mem_sort(d->buf, d->len, &arg);
  }

  for (i=0,len=d->len; i<len; i++) {
    strm_emit(strm, d->buf[i], ((void*)0));
  }
  free(d->buf);
  free(d);
  return STRM_OK;
}
