
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PathName; } ;
typedef TYPE_1__* PNTFS_FCB ;
typedef int BOOLEAN ;


 scalar_t__ wcscmp (int ,char*) ;

BOOLEAN
NtfsFCBIsRoot(PNTFS_FCB Fcb)
{
    return (wcscmp(Fcb->PathName, L"\\") == 0);
}
