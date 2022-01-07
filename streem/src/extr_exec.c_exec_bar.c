
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int strm_connect (int *,int ,int ,int *) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;

__attribute__((used)) static int
exec_bar(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value x, y;

  strm_get_args(strm, argc, args, "vv", &x, &y);
  return strm_connect(strm, x, y, ret);
}
