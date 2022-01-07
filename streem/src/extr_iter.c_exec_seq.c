
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_data {double n; double inc; double end; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int gen_seq ;
 struct seq_data* malloc (int) ;
 int strm_get_args (int *,int,int *,char*,double*,double*,double*) ;
 int strm_producer ;
 int strm_stream_new (int ,int ,int *,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_seq(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  double start=1, end=-1, inc=1, tmp;
  struct seq_data* d;

  strm_get_args(strm, argc, args, "|fff", &start, &end, &tmp);
  switch (argc) {
  case 1:
    end = start;
    start = 1;
    break;
  case 3:
    inc = end;
    end = tmp;
    break;
  default:
    break;
  }
  d = malloc(sizeof(*d));
  d->n = start;
  d->inc = inc;
  d->end = end;
  *ret = strm_stream_value(strm_stream_new(strm_producer, gen_seq, ((void*)0), (void*)d));
  return STRM_OK;
}
