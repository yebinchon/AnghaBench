
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rbk_data {int tbl; } ;
typedef int strm_value ;
struct TYPE_4__ {struct rbk_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ khiter_t ;


 int STRM_OK ;
 scalar_t__ kh_begin (int ) ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_exist (int ,scalar_t__) ;
 int kh_key (int ,scalar_t__) ;
 int kh_value (int ,scalar_t__) ;
 int strm_ary_new (int *,int) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
rbk_finish(strm_stream* strm, strm_value data)
{
  struct rbk_data *d = strm->data;
  khiter_t i;

  for (i=kh_begin(d->tbl); i!=kh_end(d->tbl); i++) {
    if (kh_exist(d->tbl, i)) {
      strm_value values[2];

      values[0] = kh_key(d->tbl, i);
      values[1] = kh_value(d->tbl, i);
      strm_emit(strm, strm_ary_new(values, 2), ((void*)0));
    }
  }
  return STRM_OK;
}
