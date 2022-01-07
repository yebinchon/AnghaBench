
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct count_data {int count; } ;
typedef int strm_value ;
struct TYPE_3__ {struct count_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;

__attribute__((used)) static int
iter_count(strm_stream* strm, strm_value data)
{
  struct count_data* d = strm->data;

  d->count++;
  return STRM_OK;
}
