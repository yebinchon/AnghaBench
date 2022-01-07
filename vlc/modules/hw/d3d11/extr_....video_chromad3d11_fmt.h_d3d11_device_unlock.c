
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context_mutex; } ;
typedef TYPE_1__ d3d11_device_t ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int ReleaseMutex (scalar_t__) ;

__attribute__((used)) static inline void d3d11_device_unlock(d3d11_device_t *d3d_dev)
{
    if( d3d_dev->context_mutex != INVALID_HANDLE_VALUE )
        ReleaseMutex( d3d_dev->context_mutex );
}
