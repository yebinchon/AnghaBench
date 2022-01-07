
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_va_t ;
struct TYPE_6__ {int (* close ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;
 int vlc_object_delete (TYPE_2__*) ;

void vlc_va_Delete(vlc_va_t *va)
{
    if (va->ops->close != ((void*)0))
        va->ops->close(va);
    vlc_object_delete(va);
}
