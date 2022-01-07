
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct recv_data {int strm; int (* func ) (int ,int ) ;} ;
struct latch_data {int rq; } ;
typedef int strm_value ;
struct TYPE_3__ {struct latch_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int free (struct recv_data*) ;
 struct recv_data* strm_queue_get (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
latch_close(strm_stream* strm, strm_value data)
{
  struct latch_data* d = strm->data;

  for (;;) {
    struct recv_data* r = strm_queue_get(d->rq);
    if (!r) break;
    (*r->func)(r->strm, data);
    free(r);
  }
  return STRM_OK;
}
