
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct repeat_data {scalar_t__ count; int v; } ;
typedef int strm_value ;
struct TYPE_5__ {struct repeat_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,...) ;
 int strm_stream_close (TYPE_1__*) ;

__attribute__((used)) static int
gen_repeat(strm_stream* strm, strm_value data)
{
  struct repeat_data *d = strm->data;

  d->count--;
  if (d->count == 0) {
    strm_emit(strm, d->v, ((void*)0));
    strm_stream_close(strm);
  }
  else {
    strm_emit(strm, d->v, gen_repeat);
  }
  return STRM_OK;
}
