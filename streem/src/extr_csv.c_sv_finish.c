
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct csv_data {struct csv_data* types; scalar_t__ headers; } ;
typedef int strm_value ;
struct TYPE_4__ {struct csv_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int free (struct csv_data*) ;
 scalar_t__ strm_ary_null ;
 int strm_ary_value (scalar_t__) ;
 int strm_emit (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
sv_finish(strm_stream* strm, strm_value data)
{
  struct csv_data *cd = strm->data;

  if (cd->headers && cd->types == ((void*)0)) {
    strm_emit(strm, strm_ary_value(cd->headers), ((void*)0));
    cd->headers = strm_ary_null;
  }

  if (cd->types) {
    free(cd->types);
    cd->types = ((void*)0);
  }
  free(cd);
  return STRM_OK;
}
