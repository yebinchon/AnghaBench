
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sample_data {size_t len; int * samples; } ;
typedef int strm_value ;
struct TYPE_4__ {struct sample_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef size_t strm_int ;


 int STRM_OK ;
 int free (struct sample_data*) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
finish_sample(strm_stream* strm, strm_value data)
{
  struct sample_data* d = strm->data;
  strm_int i, len=d->len;

  for (i=0; i<len; i++) {
    strm_emit(strm, d->samples[i], ((void*)0));
  }
  free(d);
  return STRM_OK;
}
