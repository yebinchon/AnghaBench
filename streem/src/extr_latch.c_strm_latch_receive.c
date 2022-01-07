
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct recv_data {int (* func ) (TYPE_1__*,int ) ;TYPE_1__* strm; } ;
struct latch_data {int rq; int dq; } ;
typedef int strm_value ;
struct TYPE_7__ {scalar_t__ start_func; struct latch_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef int (* strm_callback ) (TYPE_1__*,int ) ;


 int assert (int) ;
 int free (int *) ;
 scalar_t__ latch_push ;
 struct recv_data* malloc (int) ;
 int strm_queue_add (int ,struct recv_data*) ;
 int * strm_queue_get (int ) ;
 int stub1 (TYPE_1__*,int ) ;

void
strm_latch_receive(strm_stream* latch, strm_stream* strm, strm_callback func)
{
  struct latch_data* d;
  strm_value* v;

  assert(latch->start_func == latch_push);
  d = latch->data;
  v = strm_queue_get(d->dq);
  if (v) {
    (*func)(strm, *v);
    free(v);
  }
  else {
    struct recv_data* r = malloc(sizeof(struct recv_data));
    r->strm = strm;
    r->func = func;
    strm_queue_add(d->rq, r);
  }
}
