
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct reduce_data {int acc; int init; } ;
typedef int strm_value ;
struct TYPE_4__ {struct reduce_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
reduce_finish(strm_stream* strm, strm_value data)
{
  struct reduce_data* d = strm->data;

  if (!d->init) return STRM_NG;
  strm_emit(strm, d->acc, ((void*)0));
  return STRM_OK;
}
