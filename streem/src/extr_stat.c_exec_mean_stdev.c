
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int exec_var_stdev (int *,int,int *,int *,int ) ;
 int mode_mean_stdev ;

__attribute__((used)) static int
exec_mean_stdev(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  return exec_var_stdev(strm, argc, args, ret, mode_mean_stdev);
}
