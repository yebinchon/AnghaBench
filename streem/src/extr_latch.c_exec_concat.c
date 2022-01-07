
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct concat_data {int len; int ** latch; scalar_t__ i; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_OK ;
 int concat_start ;
 struct concat_data* malloc (int) ;
 int strm_connect (int *,int ,int ,int *) ;
 int * strm_latch_new () ;
 int strm_producer ;
 int * strm_stream_new (int ,int ,int *,struct concat_data*) ;
 int strm_stream_value (int *) ;

__attribute__((used)) static int
exec_concat(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct concat_data* d = malloc(sizeof(struct concat_data)+sizeof(strm_stream*)*argc);
  strm_int i;
  strm_stream* s;

  d->i = 0;
  d->len = argc;
  for (i=0; i<argc; i++) {
    strm_value r;
    s = strm_latch_new();
    strm_connect(strm, args[i], strm_stream_value(s), &r);
    d->latch[i] = s;
  }
  *ret = strm_stream_value(strm_stream_new(strm_producer, concat_start, ((void*)0), d));
  return STRM_OK;
}
