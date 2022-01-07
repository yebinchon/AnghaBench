
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strm_stream_mode ;
struct TYPE_4__ {int queue; scalar_t__ excl; scalar_t__ refcnt; int * exc; scalar_t__ flags; scalar_t__ rcapa; scalar_t__ rsize; int * rest; int * dst; void* data; void* close_func; void* start_func; int mode; int type; } ;
typedef TYPE_1__ strm_stream ;
typedef void* strm_callback ;


 int STRM_PTR_STREAM ;
 TYPE_1__* malloc (int) ;
 int stream_count ;
 int strm_atomic_inc (int ) ;
 int strm_queue_new () ;

strm_stream*
strm_stream_new(strm_stream_mode mode, strm_callback start_func, strm_callback close_func, void* data)
{
  strm_stream *s = malloc(sizeof(strm_stream));
  s->type = STRM_PTR_STREAM;
  s->mode = mode;
  s->start_func = start_func;
  s->close_func = close_func;
  s->data = data;
  s->dst = ((void*)0);
  s->rest = ((void*)0);
  s->rsize = 0;
  s->rcapa = 0;
  s->flags = 0;
  s->exc = ((void*)0);
  s->refcnt = 0;
  s->excl = 0;
  s->queue = strm_queue_new();
  strm_atomic_inc(stream_count);

  return s;
}
