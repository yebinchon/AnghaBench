
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_OK ;
 int strm_cmp (int ,int ) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;
 int strm_int_value (int ) ;

__attribute__((used)) static int
exec_cmp(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_int cmp;
  strm_value x, y;

  strm_get_args(strm, argc, args, "vv", &x, &y);
  cmp = strm_cmp(x, y);
  *ret = strm_int_value(cmp);
  return STRM_OK;
}
