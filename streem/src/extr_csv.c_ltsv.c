
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int ltsv_accept ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*) ;
 int * strm_stream_new (int ,int ,int *,int *) ;
 int strm_stream_value (int *) ;

__attribute__((used)) static int
ltsv(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_stream *t;

  strm_get_args(strm, argc, args, "");

  t = strm_stream_new(strm_filter, ltsv_accept, ((void*)0), ((void*)0));
  *ret = strm_stream_value(t);
  return STRM_OK;
}
