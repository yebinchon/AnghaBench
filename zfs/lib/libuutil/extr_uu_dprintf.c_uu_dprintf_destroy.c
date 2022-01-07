
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uud_name; } ;
typedef TYPE_1__ uu_dprintf_t ;


 int free (scalar_t__) ;
 int uu_free (TYPE_1__*) ;

void
uu_dprintf_destroy(uu_dprintf_t *D)
{
 if (D->uud_name)
  free(D->uud_name);

 uu_free(D);
}
