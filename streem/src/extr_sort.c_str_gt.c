
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int str_cmp (int ,int ) ;
 int strm_bool_value (int) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;

__attribute__((used)) static int
str_gt(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value x, y;
  int cmp;

  strm_get_args(strm, argc, args, "SS", &x, &y);
  cmp = str_cmp(x, y);
  *ret = strm_bool_value(cmp > 0);
  return STRM_OK;
}
