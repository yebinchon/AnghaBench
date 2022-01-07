
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rnorm_data {int has_spare; int seed; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int FALSE ;
 int STRM_NG ;
 int STRM_OK ;
 int free (struct rnorm_data*) ;
 int gen_rnorm ;
 struct rnorm_data* malloc (int) ;
 int memcpy (int ,char const*,int) ;
 int strm_get_args (int *,int,int *,char*,char const**,int*) ;
 int strm_producer ;
 int strm_raise (int *,char*) ;
 int strm_stream_new (int ,int ,int *,void*) ;
 int strm_stream_value (int ) ;
 int xorshift128init (int ) ;

__attribute__((used)) static int
exec_rnorm(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct rnorm_data* d;
  const char* s;
  strm_int len;

  strm_get_args(strm, argc, args, "|s", &s, &len);
  d = malloc(sizeof(struct rnorm_data));
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
  d->has_spare = FALSE;
  *ret = strm_stream_value(strm_stream_new(strm_producer, gen_rnorm, ((void*)0), (void*)d));
  return STRM_OK;
}
