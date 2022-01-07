
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_sys; } ;
struct TYPE_5__ {TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;


 int free (int ) ;

__attribute__((used)) static void OSDWidgetDestroy(subpicture_t *subpic)
{
    free(subpic->updater.p_sys);
}
