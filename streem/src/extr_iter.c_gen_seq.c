
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct seq_data {scalar_t__ end; scalar_t__ n; scalar_t__ inc; } ;
typedef int strm_value ;
struct TYPE_6__ {struct seq_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int (*) (TYPE_1__*,int )) ;
 int strm_float_value (scalar_t__) ;
 int strm_stream_close (TYPE_1__*) ;

__attribute__((used)) static int
gen_seq(strm_stream* strm, strm_value data)
{
  struct seq_data* d = strm->data;

  if (d->end > 0 && d->n > d->end) {
    strm_stream_close(strm);
    return STRM_OK;
  }
  strm_emit(strm, strm_float_value(d->n), gen_seq);
  d->n += d->inc;
  return STRM_OK;
}
