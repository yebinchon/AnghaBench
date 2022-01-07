
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csv_data {char sep; scalar_t__ n; int prev; int * types; int headers; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 struct csv_data* malloc (int) ;
 int strm_ary_null ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*) ;
 int strm_str_null ;
 int * strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int *) ;
 int sv_accept ;
 int sv_finish ;

__attribute__((used)) static int
sv(strm_stream* strm, int argc, strm_value* args, strm_value* ret, char sep)
{
  strm_stream *t;
  struct csv_data *cd;

  strm_get_args(strm, argc, args, "");
  cd = malloc(sizeof(struct csv_data));
  if (!cd) return STRM_NG;
  cd->headers = strm_ary_null;
  cd->types = ((void*)0);
  cd->prev = strm_str_null;
  cd->sep = sep;
  cd->n = 0;

  t = strm_stream_new(strm_filter, sv_accept, sv_finish, (void*)cd);
  *ret = strm_stream_value(t);
  return STRM_OK;
}
