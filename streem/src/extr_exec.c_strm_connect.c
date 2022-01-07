
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct strm_lambda {int dummy; } ;
struct array_data {scalar_t__ n; int arr; } ;
typedef int strm_value ;
struct TYPE_7__ {scalar_t__ mode; } ;
typedef TYPE_1__ strm_stream ;
typedef void* strm_cfunc ;


 int STRM_IO_READ ;
 int STRM_IO_WRITE ;
 int STRM_NG ;
 int STRM_OK ;
 int arr_exec ;
 int blk_exec ;
 int * cfunc_closer ;
 int cfunc_exec ;
 struct array_data* malloc (int) ;
 scalar_t__ strm_array_p (int ) ;
 scalar_t__ strm_cfunc_p (int ) ;
 scalar_t__ strm_consumer ;
 scalar_t__ strm_filter ;
 scalar_t__ strm_io_p (int ) ;
 int strm_io_stream (int ,int ) ;
 scalar_t__ strm_lambda_p (int ) ;
 scalar_t__ strm_producer ;
 int strm_raise (TYPE_1__*,char*) ;
 int strm_stream_connect (TYPE_1__*,TYPE_1__*) ;
 int strm_stream_new (scalar_t__,int ,int *,void*) ;
 scalar_t__ strm_stream_p (int ) ;
 int strm_stream_value (int ) ;
 int strm_value_ary (int ) ;
 void* strm_value_cfunc (int ) ;
 struct strm_lambda* strm_value_lambda (int ) ;
 TYPE_1__* strm_value_stream (int ) ;

int
strm_connect(strm_stream* strm, strm_value src, strm_value dst, strm_value* ret)
{

  if (strm_io_p(src)) {
    src = strm_stream_value(strm_io_stream(src, STRM_IO_READ));
  }

  else if (strm_lambda_p(src)) {
    struct strm_lambda* lmbd = strm_value_lambda(src);
    src = strm_stream_value(strm_stream_new(strm_filter, blk_exec, ((void*)0), (void*)lmbd));
  }

  else if (strm_array_p(src)) {
    struct array_data *arrd = malloc(sizeof(struct array_data));
    arrd->arr = strm_value_ary(src);
    arrd->n = 0;
    src = strm_stream_value(strm_stream_new(strm_producer, arr_exec, ((void*)0), (void*)arrd));
  }



  if (strm_io_p(dst)) {
    dst = strm_stream_value(strm_io_stream(dst, STRM_IO_WRITE));
  }

  else if (strm_lambda_p(dst)) {
    struct strm_lambda* lmbd = strm_value_lambda(dst);
    dst = strm_stream_value(strm_stream_new(strm_filter, blk_exec, ((void*)0), (void*)lmbd));
  }

  else if (strm_cfunc_p(dst)) {
    strm_cfunc func = strm_value_cfunc(dst);
    dst = strm_stream_value(strm_stream_new(strm_filter, cfunc_exec, cfunc_closer, func));
  }


  if (strm_stream_p(src) && strm_stream_p(dst)) {
    strm_stream* lstrm = strm_value_stream(src);
    strm_stream* rstrm = strm_value_stream(dst);
    if (lstrm == ((void*)0) || rstrm == ((void*)0) ||
        lstrm->mode == strm_consumer ||
        rstrm->mode == strm_producer) {
      strm_raise(strm, "stream error");
      return STRM_NG;
    }
    strm_stream_connect(strm_value_stream(src), strm_value_stream(dst));
    *ret = dst;
    return STRM_OK;
  }
  return STRM_NG;
}
