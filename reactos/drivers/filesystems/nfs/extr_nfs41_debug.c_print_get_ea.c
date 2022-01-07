
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EaName; int EaNameLength; int NextEntryOffset; } ;
typedef TYPE_1__* PFILE_GET_EA_INFORMATION ;


 int DbgP (char*,int ,int ,int ) ;

void print_get_ea(int on, PFILE_GET_EA_INFORMATION info)
{
    if (!on || !info) return;
    DbgP("GET_EA_INFO: NextOffset=%d EaNameLength=%d EaName=%s\n",
        info->NextEntryOffset, info->EaNameLength, info->EaName);
}
