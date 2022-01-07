
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int EXIT_SUCCESS ;
 int STRM_OK ;
 int exit (int ) ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_int_value (int ) ;

__attribute__((used)) static int
exec_exit(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_int estatus = EXIT_SUCCESS;

  strm_get_args(strm, argc, args, "|i", &estatus);
  exit(estatus);

  *ret = strm_int_value(estatus);
  return STRM_OK;
}
