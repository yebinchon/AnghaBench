
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct array_data {scalar_t__ n; int arr; } ;
typedef int strm_value ;
struct TYPE_6__ {struct array_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 scalar_t__ strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_emit (TYPE_1__*,int ,int (*) (TYPE_1__*,int )) ;
 int strm_stream_close (TYPE_1__*) ;

__attribute__((used)) static int
arr_exec(strm_stream* strm, strm_value data)
{
  struct array_data *arrd = strm->data;

  if (arrd->n == strm_ary_len(arrd->arr)) {
    strm_stream_close(strm);
    return STRM_OK;
  }
  strm_emit(strm, strm_ary_ptr(arrd->arr)[arrd->n++], arr_exec);
  return STRM_OK;
}
