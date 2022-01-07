
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct latch_data {int dq; } ;
struct TYPE_3__ {scalar_t__ mode; struct latch_data* data; } ;
typedef TYPE_1__ strm_stream ;


 scalar_t__ strm_consumer ;
 int strm_queue_empty_p (int ) ;

int
strm_latch_finish_p(strm_stream* latch)
{
  struct latch_data* c;

  if (latch->mode == strm_consumer) return 0;
  c = latch->data;
  return strm_queue_empty_p(c->dq);
}
