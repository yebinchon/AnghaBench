
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sortby_value {int dummy; } ;
struct sortby_data {size_t len; struct sortby_data* buf; int o; } ;
typedef int strm_value ;
struct TYPE_4__ {struct sortby_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef size_t strm_int ;


 int STRM_OK ;
 int free (struct sortby_data*) ;
 int qsort (struct sortby_data*,size_t,int,int ) ;
 int sortby_cmp ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
finish_sortby(strm_stream* strm, strm_value data)
{
  struct sortby_data* d = strm->data;
  strm_int i, len;

  qsort(d->buf, d->len, sizeof(struct sortby_value), sortby_cmp);
  for (i=0,len=d->len; i<len; i++) {
    strm_emit(strm, d->buf[i].o, ((void*)0));
  }
  free(d->buf);
  free(d);
  return STRM_OK;
}
