
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct zip_data {int * latch; int len; int a; scalar_t__ i; } ;
typedef int strm_value ;
struct TYPE_4__ {struct zip_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_ary_new (int *,int ) ;
 int strm_latch_receive (int ,TYPE_1__*,int ) ;
 int zip_iter ;

__attribute__((used)) static int
zip_start(strm_stream* strm, strm_value data)
{
  struct zip_data* z = strm->data;

  if (z) {
    z->i = 0;
    z->a = strm_ary_new(((void*)0), z->len);
    strm_latch_receive(z->latch[0], strm, zip_iter);
  }
  return STRM_OK;
}
