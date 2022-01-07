
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct recv_data {int strm; int (* func ) (int ,int ) ;} ;
struct latch_data {int dq; int rq; } ;
typedef int strm_value ;
struct TYPE_3__ {scalar_t__ mode; struct latch_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int free (struct recv_data*) ;
 int * malloc (int) ;
 scalar_t__ strm_consumer ;
 int strm_queue_add (int ,int *) ;
 struct recv_data* strm_queue_get (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
latch_push(strm_stream* strm, strm_value data)
{
  struct latch_data* d = strm->data;
  struct recv_data* r = strm_queue_get(d->rq);

  if (strm->mode != strm_consumer) {
    return STRM_NG;
  }
  if (r) {
    (*r->func)(r->strm, data);
    free(r);
  }
  else {
    strm_value* v = malloc(sizeof(strm_value));
    *v = data;
    strm_queue_add(d->dq, v);
  }
  return STRM_OK;
}
