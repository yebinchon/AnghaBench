
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t CurrentMhz; } ;
typedef TYPE_1__ PROCESSOR_POWER_INFORMATION ;
typedef int NTSTATUS ;


 int NtPowerInformation (int ,int *,int ,TYPE_1__*,size_t) ;
 int ProcessorInformation ;
 int get_processor_count () ;
 TYPE_1__* heap_alloc (size_t) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static UINT get_processor_currentclockspeed( UINT index )
{
    PROCESSOR_POWER_INFORMATION *info;
    UINT ret = 1000, size = get_processor_count() * sizeof(PROCESSOR_POWER_INFORMATION);
    NTSTATUS status;

    if ((info = heap_alloc( size )))
    {
        status = NtPowerInformation( ProcessorInformation, ((void*)0), 0, info, size );
        if (!status) ret = info[index].CurrentMhz;
        heap_free( info );
    }
    return ret;
}
