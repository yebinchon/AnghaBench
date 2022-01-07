
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;
typedef int FILE ;


 int STRM_OK ;
 int fputs (char*,int *) ;
 int fwrite (int ,int ,int,int *) ;
 int strm_nil_value () ;
 int strm_str_len (int ) ;
 int strm_str_ptr (int ) ;
 int strm_string_p (int ) ;
 int strm_to_str (int ) ;

__attribute__((used)) static int
exec_cputs(strm_stream* strm, FILE* out, int argc, strm_value* args, strm_value* ret)
{
  int i;

  for (i = 0; i < argc; i++) {
    strm_string s;

    if (i != 0) {
      if (!strm_string_p(args[i-1])) {
        fputs(" ", out);
      }
    }
    s = strm_to_str(args[i]);
    fwrite(strm_str_ptr(s), strm_str_len(s), 1, out);
  }
  fputs("\n", out);
  *ret = strm_nil_value();
  return STRM_OK;
}
