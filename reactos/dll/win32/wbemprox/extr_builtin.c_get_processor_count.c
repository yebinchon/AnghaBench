
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
typedef int UINT ;
struct TYPE_3__ {int NumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_BASIC_INFORMATION ;


 scalar_t__ NtQuerySystemInformation (int ,TYPE_1__*,int,int *) ;
 int SystemBasicInformation ;

__attribute__((used)) static UINT get_processor_count(void)
{
    SYSTEM_BASIC_INFORMATION info;

    if (NtQuerySystemInformation( SystemBasicInformation, &info, sizeof(info), ((void*)0) )) return 1;
    return info.NumberOfProcessors;
}
