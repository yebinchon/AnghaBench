
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int TRUE ;
 int ary_sum_avg (int *,int,int *,int *,int ) ;

__attribute__((used)) static int
ary_avg(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  return ary_sum_avg(strm, argc, args, ret, TRUE);
}
