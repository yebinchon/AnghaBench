
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_OK ;
 int strm_get_args (int *,int,int *,char*,char**,int *) ;
 int strm_int_value (int ) ;

__attribute__((used)) static int
str_length(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  char* p;
  strm_int len;

  strm_get_args(strm, argc, args, "s", &p, &len);
  *ret = strm_int_value(len);
  return STRM_OK;
}
