
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* zv_zso; } ;
typedef TYPE_3__ zvol_state_t ;
struct TYPE_6__ {TYPE_1__* zvo_disk; } ;
struct TYPE_5__ {int * private_data; } ;



__attribute__((used)) static void
zvol_clear_private(zvol_state_t *zv)
{




 zv->zv_zso->zvo_disk->private_data = ((void*)0);
}
