
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct concat_data {size_t i; int * latch; } ;
typedef int strm_value ;
struct TYPE_4__ {struct concat_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int concat_iter ;
 int strm_latch_receive (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
concat_start(strm_stream* strm, strm_value data)
{
  struct concat_data* d = strm->data;

  if (d) {
    strm_latch_receive(d->latch[d->i], strm, concat_iter);
  }
  return STRM_OK;
}
