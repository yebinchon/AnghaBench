
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct slice_data {struct slice_data* buf; } ;
typedef int strm_value ;
struct TYPE_3__ {struct slice_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int free (struct slice_data*) ;

__attribute__((used)) static int
finish_consec(strm_stream* strm, strm_value data)
{
  struct slice_data* d = strm->data;

  free(d->buf);
  free(d);
  return STRM_OK;
}
