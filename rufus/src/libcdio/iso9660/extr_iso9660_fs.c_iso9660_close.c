
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * stream; } ;
typedef TYPE_1__ iso9660_t ;


 int cdio_stdio_destroy (int *) ;
 int free (TYPE_1__*) ;

bool
iso9660_close (iso9660_t *p_iso)
{
  if (((void*)0) != p_iso) {
    cdio_stdio_destroy(p_iso->stream);
    p_iso->stream = ((void*)0);
    free(p_iso);
  }
  return 1;
}
