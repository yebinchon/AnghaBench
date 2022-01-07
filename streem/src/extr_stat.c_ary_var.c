
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int FALSE ;
 int ary_var_stdev (int *,int,int *,int *,int ) ;

__attribute__((used)) static int
ary_var(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  return ary_var_stdev(strm, argc, args, ret, FALSE);
}
