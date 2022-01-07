
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;
 int quick_median (int *,int) ;
 int strm_funcall (int *,int ,int,int *,int *) ;
 int strm_get_args (int *,int,int *,char*,int **,int*,int *) ;
 int strm_raise (int *,char*) ;

__attribute__((used)) static int
ary_median(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* buf;
  strm_value* p;
  strm_int len;
  strm_value func;
  strm_int i;

  strm_get_args(strm, argc, args, "a|v", &p, &len, &func);

  if (len == 0) {
    strm_raise(strm, "empty array");
    return STRM_NG;
  }
  buf = malloc(sizeof(strm_value)*len);
  if (!buf) return STRM_NG;
  if (argc == 1) {
    memcpy(buf, p, sizeof(strm_value)*len);
  }
  else {
    strm_value func = args[1];

    for (i=0; i<len; i++) {
      if (strm_funcall(strm, func, 1, &p[i], &buf[i]) == STRM_NG) {
        free(buf);
        return STRM_NG;
      }
    }
  }
  *ret = quick_median(buf, len);
  free(buf);
  return STRM_OK;
}
