
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sortby_value {int o; int v; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;
typedef int strm_array ;


 int STRM_NG ;
 int STRM_OK ;
 int free (struct sortby_value*) ;
 struct sortby_value* malloc (int) ;
 int qsort (struct sortby_value*,int,int,int ) ;
 int sortby_cmp ;
 int strm_ary_new (int *,int) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 int strm_funcall (int *,int ,int,int *,int *) ;
 int strm_get_args (int *,int,int *,char*,int **,int*,int *) ;

__attribute__((used)) static int
ary_sortby(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct sortby_value* buf;
  strm_value* p;
  strm_int len;
  strm_value func;
  strm_array ary;
  strm_int i;

  strm_get_args(strm, argc, args, "av", &p, &len, &func);

  buf = malloc(sizeof(struct sortby_value)*len);
  if (!buf) return STRM_NG;
  for (i=0; i<len; i++) {
    buf[i].o = p[i];
    if (strm_funcall(strm, func, 1, &p[i], &buf[i].v) == STRM_NG) {
      free(buf);
      return STRM_NG;;
    }
  }
  qsort(buf, len, sizeof(struct sortby_value), sortby_cmp);
  ary = strm_ary_new(((void*)0), len);
  p = strm_ary_ptr(ary);
  for (i=0; i<len; i++) {
    p[i] = buf[i].o;
  }
  free(buf);
  *ret = strm_ary_value(ary);
  return STRM_OK;
}
