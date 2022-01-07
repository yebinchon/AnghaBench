
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int seed ;


 int STRM_OK ;
 int strm_get_args (int *,int,int *,char*) ;
 int strm_str_new (char const*,int) ;
 int xorshift128init (int *) ;

__attribute__((used)) static int
rand_seed(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  uint32_t seed[4];

  strm_get_args(strm, argc, args, "");
  xorshift128init(seed);
  *ret = strm_str_new((const char*)seed, sizeof(seed));
  return STRM_OK;
}
