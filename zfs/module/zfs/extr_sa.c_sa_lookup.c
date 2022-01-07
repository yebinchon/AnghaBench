
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int sa_lock; } ;
typedef TYPE_1__ sa_handle_t ;
typedef int sa_attr_type_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_lookup_locked (TYPE_1__*,int ,void*,int ) ;

int
sa_lookup(sa_handle_t *hdl, sa_attr_type_t attr, void *buf, uint32_t buflen)
{
 int error;

 mutex_enter(&hdl->sa_lock);
 error = sa_lookup_locked(hdl, attr, buf, buflen);
 mutex_exit(&hdl->sa_lock);

 return (error);
}
