
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int status ;
typedef int UINT64 ;
struct TYPE_3__ {int dwLength; int ullAvailPhys; } ;
typedef TYPE_1__ MEMORYSTATUSEX ;


 int GlobalMemoryStatusEx (TYPE_1__*) ;

__attribute__((used)) static UINT64 get_available_physical_memory(void)
{
    MEMORYSTATUSEX status;

    status.dwLength = sizeof(status);
    if (!GlobalMemoryStatusEx( &status )) return 1024 * 1024 * 1024;
    return status.ullAvailPhys;
}
