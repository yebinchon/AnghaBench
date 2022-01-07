
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cdio; int stream; scalar_t__ b_stream; } ;
typedef TYPE_1__ udf_t ;


 int cdio_destroy (int ) ;
 int cdio_stdio_destroy (int ) ;
 int free_and_null (TYPE_1__*) ;

bool
udf_close (udf_t *p_udf)
{
  if (!p_udf) return 1;
  if (p_udf->b_stream) {
    cdio_stdio_destroy(p_udf->stream);
  } else {
    cdio_destroy(p_udf->cdio);
  }



  free_and_null(p_udf);
  return 1;
}
