
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sum_data {int sum; int c; int num; } ;
typedef int strm_value ;
struct TYPE_4__ {struct sum_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 int strm_float_value (int) ;

__attribute__((used)) static int
avg_finish(strm_stream* strm, strm_value data)
{
  struct sum_data* d = strm->data;

  strm_emit(strm, strm_float_value((d->sum+d->c)/d->num), ((void*)0));
  return STRM_OK;
}
