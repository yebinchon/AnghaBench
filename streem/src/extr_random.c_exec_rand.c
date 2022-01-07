
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {int seed; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int free (struct rand_data*) ;
 int gen_rand ;
 struct rand_data* malloc (int) ;
 int memcpy (int ,char const*,int) ;
 int strm_get_args (int *,int,int *,char*,char const**,int*) ;
 int strm_producer ;
 int strm_raise (int *,char*) ;
 int strm_stream_new (int ,int ,int *,void*) ;
 int strm_stream_value (int ) ;
 int xorshift128init (int ) ;

__attribute__((used)) static int
exec_rand(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct rand_data* d;
  const char* s;
  strm_int len;

  strm_get_args(strm, argc, args, "|s", &s, &len);
  d = malloc(sizeof(struct rand_data));
  if (!d) return STRM_NG;
  if (argc == 2) {
    if (len != sizeof(d->seed)) {
      strm_raise(strm, "seed size differ");
      free(d);
      return STRM_NG;
    }
    memcpy(d->seed, s, len);
  }
  else {
    xorshift128init(d->seed);
  }
  *ret = strm_stream_value(strm_stream_new(strm_producer, gen_rand, ((void*)0), (void*)d));
  return STRM_OK;
}
