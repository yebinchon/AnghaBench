
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int QuadPart; } ;
struct TYPE_5__ {int QuadPart; } ;
struct TYPE_7__ {int DeletePending; TYPE_2__ EndOfFile; TYPE_1__ AllocationSize; int NumberOfLinks; scalar_t__ Directory; } ;
typedef TYPE_3__* PFILE_STANDARD_INFORMATION ;


 int DbgP (char*,char*,int ,int ,int ,int ) ;

void print_std_info(int on, PFILE_STANDARD_INFORMATION info)
{
    if (!on) return;
    DbgP("STD_INFO: Type=%s #Links=%d Alloc=%lx EOF=%lx Delete=%d\n",
        info->Directory?"DIR":"FILE", info->NumberOfLinks,
        info->AllocationSize.QuadPart, info->EndOfFile.QuadPart,
        info->DeletePending);
}
