
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;


 int ASSERT (TYPE_1__*) ;
 int mutex_enter (int *) ;

void
sa_handle_lock(sa_handle_t *hdl)
{
 ASSERT(hdl);
 mutex_enter(&hdl->sa_lock);
}
