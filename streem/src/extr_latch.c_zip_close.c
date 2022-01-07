
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;

__attribute__((used)) static int
zip_close(strm_stream* strm, strm_value data)
{
  strm->data = ((void*)0);
  return STRM_OK;
}
