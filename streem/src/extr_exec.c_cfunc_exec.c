
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_6__ {scalar_t__ (* data ) (TYPE_1__*,int,int *,int *) ;} ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ (* strm_cfunc ) (TYPE_1__*,int,int *,int *) ;


 int STRM_NG ;
 scalar_t__ STRM_OK ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 scalar_t__ stub1 (TYPE_1__*,int,int *,int *) ;

__attribute__((used)) static int
cfunc_exec(strm_stream* strm, strm_value data)
{
  strm_value ret;
  strm_cfunc func = strm->data;

  if ((*func)(strm, 1, &data, &ret) == STRM_OK) {
    strm_emit(strm, ret, ((void*)0));
    return STRM_OK;
  }
  return STRM_NG;
}
