
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VLogFile ;
struct TYPE_6__ {scalar_t__ szOsFile; int iVersion; } ;
struct TYPE_5__ {scalar_t__ szOsFile; int iVersion; } ;
struct TYPE_4__ {TYPE_2__ base; TYPE_3__* pVfs; } ;


 TYPE_3__* sqlite3_vfs_find (int ) ;
 int sqlite3_vfs_register (TYPE_2__*,int ) ;
 TYPE_1__ vlog_vfs ;

int sqlite3_register_vfslog(const char *zArg)
{
    vlog_vfs.pVfs = sqlite3_vfs_find(0);

    vlog_vfs.base.iVersion = vlog_vfs.pVfs->iVersion;
    vlog_vfs.base.szOsFile = sizeof(VLogFile) + vlog_vfs.pVfs->szOsFile;
    return sqlite3_vfs_register(&vlog_vfs.base, 0);
}
