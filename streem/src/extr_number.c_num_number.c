
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int strm_get_args (int *,int,int *,char*,int *) ;

__attribute__((used)) static int
num_number(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_get_args(strm, argc, args, "N", ret);
  return STRM_OK;
}
