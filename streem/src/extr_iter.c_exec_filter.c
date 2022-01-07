
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_data {int func; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int iter_filter ;
 struct map_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_stream_new (int ,int ,int *,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_filter(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct map_data* d = malloc(sizeof(*d));

  strm_get_args(strm, argc, args, "v", &d->func);
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_filter, ((void*)0), (void*)d));
  return STRM_OK;
}
