
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct sample_data {size_t i; size_t len; void** samples; int seed; } ;
typedef void* strm_value ;
struct TYPE_3__ {struct sample_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 size_t xorshift128 (int ) ;

__attribute__((used)) static int
iter_sample(strm_stream* strm, strm_value data)
{
  struct sample_data* d = strm->data;
  uint32_t r;

  if (d->i < d->len) {
    d->samples[d->i++] = data;
    return STRM_OK;
  }
  r = xorshift128(d->seed)%(d->i);
  if (r < d->len) {
    d->samples[r] = data;
  }
  d->i++;
  return STRM_OK;
}
