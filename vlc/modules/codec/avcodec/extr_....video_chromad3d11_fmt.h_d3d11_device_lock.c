
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context_mutex; } ;
typedef TYPE_1__ d3d11_device_t ;


 int FALSE ;
 int INFINITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WaitForSingleObjectEx (scalar_t__,int ,int ) ;

__attribute__((used)) static inline void d3d11_device_lock(d3d11_device_t *d3d_dev)
{
    if( d3d_dev->context_mutex != INVALID_HANDLE_VALUE )
        WaitForSingleObjectEx( d3d_dev->context_mutex, INFINITE, FALSE );
}
