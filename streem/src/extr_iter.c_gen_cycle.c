
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cycle_data {scalar_t__ count; int ary; } ;
typedef int strm_value ;
struct TYPE_5__ {struct cycle_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef size_t strm_int ;


 int STRM_OK ;
 size_t strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_emit (TYPE_1__*,int ,...) ;
 int strm_stream_close (TYPE_1__*) ;

__attribute__((used)) static int
gen_cycle(strm_stream* strm, strm_value data)
{
  struct cycle_data *d = strm->data;
  strm_value* p;
  strm_int i, len;

  d->count--;
  p = strm_ary_ptr(d->ary);
  len = strm_ary_len(d->ary);
  if (d->count != 0) {
    len--;
  }
  for (i=0; i<len; i++) {
    strm_emit(strm, p[i], ((void*)0));
  }
  if (d->count == 0) {
    strm_stream_close(strm);
  }
  else {
    strm_emit(strm, p[i], gen_cycle);
  }
  return STRM_OK;
}
