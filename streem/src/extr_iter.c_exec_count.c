
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct count_data {scalar_t__ count; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int count_finish ;
 int iter_count ;
 struct count_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_count(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct count_data* d;

  strm_get_args(strm, argc, args, "");
  d = malloc(sizeof(*d));
  d->count = 0;
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_count, count_finish, (void*)d));
  return STRM_OK;
}
