
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct latch_data {void* rq; void* dq; } ;
typedef int strm_stream ;


 int assert (int ) ;
 int latch_close ;
 int latch_push ;
 struct latch_data* malloc (int) ;
 int strm_consumer ;
 void* strm_queue_new () ;
 int * strm_stream_new (int ,int ,int ,struct latch_data*) ;

strm_stream*
strm_latch_new()
{
  struct latch_data* d = malloc(sizeof(struct latch_data));

  assert(d != ((void*)0));
  d->dq = strm_queue_new();
  d->rq = strm_queue_new();
  return strm_stream_new(strm_consumer, latch_push, latch_close, d);
}
