
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct count_data {int count; } ;
typedef int strm_value ;
struct TYPE_4__ {struct count_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int free (struct count_data*) ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 int strm_int_value (int ) ;

__attribute__((used)) static int
count_finish(strm_stream* strm, strm_value data)
{
  struct count_data* d = strm->data;

  strm_emit(strm, strm_int_value(d->count), ((void*)0));
  free(d);
  return STRM_OK;
}
