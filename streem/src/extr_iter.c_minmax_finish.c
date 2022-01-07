
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct minmax_data {int data; } ;
typedef int strm_value ;
struct TYPE_4__ {struct minmax_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
minmax_finish(strm_stream* strm, strm_value data)
{
  struct minmax_data* d = strm->data;

  strm_emit(strm, d->data, ((void*)0));
  return STRM_OK;
}
