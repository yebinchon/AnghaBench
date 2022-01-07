
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_data {int len; int ** latch; scalar_t__ i; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_OK ;
 struct zip_data* malloc (int) ;
 int strm_connect (int *,int ,int ,int *) ;
 int * strm_latch_new () ;
 int strm_producer ;
 int * strm_stream_new (int ,int ,int ,struct zip_data*) ;
 int strm_stream_value (int *) ;
 int zip_close ;
 int zip_start ;

__attribute__((used)) static int
exec_zip(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct zip_data* z = malloc(sizeof(struct zip_data)+sizeof(strm_stream*)*argc);
  strm_int i;
  strm_stream* s;

  z->i = 0;
  z->len = argc;
  for (i=0; i<argc; i++) {
    strm_value r;
    s = strm_latch_new();
    strm_connect(strm, args[i], strm_stream_value(s), &r);
    z->latch[i] = s;
  }
  *ret = strm_stream_value(strm_stream_new(strm_producer, zip_start, zip_close, z));
  return STRM_OK;
}
