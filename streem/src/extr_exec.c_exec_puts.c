
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int exec_cputs (int *,int ,int,int *,int *) ;
 int stdout ;

__attribute__((used)) static int
exec_puts(strm_stream* strm, int argc, strm_value* args, strm_value* ret) {
  return exec_cputs(strm, stdout, argc, args, ret);
}
