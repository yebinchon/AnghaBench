
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int QuadPart; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_8__ {int QuadPart; } ;
struct TYPE_7__ {int QuadPart; } ;
struct TYPE_11__ {int FileAttributes; TYPE_4__ ChangeTime; TYPE_3__ LastWriteTime; TYPE_2__ LastAccessTime; TYPE_1__ CreationTime; } ;
typedef TYPE_5__* PFILE_BASIC_INFORMATION ;


 int DbgP (char*,int ,int ,int ,int ,int ) ;

void print_basic_info(int on, PFILE_BASIC_INFORMATION info)
{
    if (!on) return;
    DbgP("BASIC_INFO: Create=%lx Access=%lx Write=%lx Change=%lx Attr=%x\n",
        info->CreationTime.QuadPart, info->LastAccessTime.QuadPart,
        info->LastWriteTime.QuadPart, info->ChangeTime.QuadPart,
        info->FileAttributes);
}
