
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mode; int rsize; int rcapa; int start_func; int refcnt; struct TYPE_7__** rest; struct TYPE_7__* dst; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int assert (int) ;
 TYPE_1__** realloc (TYPE_1__**,int) ;
 int strm_atomic_inc (int ) ;
 scalar_t__ strm_consumer ;
 int strm_nil_value () ;
 scalar_t__ strm_producer ;
 int strm_task_push (TYPE_1__*,int ,int ) ;
 int task_init () ;

int
strm_stream_connect(strm_stream* src, strm_stream* dst)
{
  assert(src->mode != strm_consumer);
  assert(dst->mode != strm_producer);
  if (src->dst == ((void*)0)) {
    src->dst = dst;
  }
  else {
    if (src->rsize <= src->rcapa) {
      src->rcapa = src->rcapa*2+2;
      src->rest = realloc(src->rest, sizeof(strm_stream*)*src->rcapa);
    }
    src->rest[src->rsize++] = dst;
  }
  strm_atomic_inc(dst->refcnt);

  if (src->mode == strm_producer) {
    task_init();
    strm_task_push(src, src->start_func, strm_nil_value());
  }
  return STRM_OK;
}
